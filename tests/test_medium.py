import time

import httpx
import pytest

from components import medium

FEED_XML = """<?xml version="1.0"?>
<rss version="2.0"><channel>
<item><title>First</title><link>https://medium.com/p/1?source=rss</link>
<description>&lt;p&gt;Hello&lt;/p&gt;</description></item>
</channel></rss>"""


@pytest.fixture(autouse=True)
def reset_cache():
    medium._cache = []
    medium._cache_time = 0.0


def test_make_snippet_strips_tags_and_figures():
    raw = "<p>Hello <b>world</b></p><figure><img src='x'><figcaption>cap</figcaption></figure>"
    assert medium._make_snippet(raw) == "Hello world"


def test_make_snippet_truncates_on_word_boundary():
    snippet = medium._make_snippet("word " * 400)
    assert snippet.endswith("…")
    assert len(snippet) <= medium.SNIPPET_LENGTH + 1


def test_to_post_handles_missing_fields():
    post = medium._to_post({})
    assert (post.title, post.link, post.date, post.snippet) == ("", "", "", "")


def test_to_post_formats_date_and_strips_link_query():
    entry = {
        "title": "T",
        "link": "https://medium.com/p/1?source=rss",
        "published_parsed": time.strptime("2024-03-05", "%Y-%m-%d"),
        "summary": "<p>Body</p>",
    }

    post = medium._to_post(entry)
    assert post.link == "https://medium.com/p/1"
    assert post.date == "March 05, 2024"
    assert post.snippet == "Body"


class _FakeClient:
    def __init__(self, response=None, error=None, **_kwargs):
        self.response, self.error = response, error

    async def __aenter__(self):
        return self

    async def __aexit__(self, *_exc):
        return False

    async def get(self, _url):
        if self.error:
            raise self.error

        return self.response


def _patch_client(monkeypatch, **kwargs):
    monkeypatch.setattr(medium.httpx, "AsyncClient", lambda **opts: _FakeClient(**kwargs, **opts))


async def test_get_posts_parses_feed(monkeypatch):
    response = httpx.Response(200, text=FEED_XML, request=httpx.Request("GET", medium.FEED_URL))
    _patch_client(monkeypatch, response=response)
    posts = await medium.get_posts()
    assert [post.title for post in posts] == ["First"]


async def test_get_posts_serves_fresh_cache_without_request(monkeypatch):
    cached = [medium.MediumPost("Old", "l", "d", "s")]
    medium._cache = cached
    medium._cache_time = time.time()
    _patch_client(monkeypatch, error=httpx.ConnectError("down"))
    assert await medium.get_posts() == cached


async def test_get_posts_falls_back_to_cache_on_error(monkeypatch, caplog):
    cached = [medium.MediumPost("Old", "l", "d", "s")]
    medium._cache = cached
    _patch_client(monkeypatch, error=httpx.ConnectError("down"))
    assert await medium.get_posts() == cached
    assert "Medium feed fetch failed" in caplog.text
