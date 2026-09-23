import html
import re
import time
from dataclasses import dataclass
from typing import Any

import feedparser  # type: ignore[import-untyped]
import httpx

FEED_URL = "https://medium.com/feed/@nathanphoffman"
CACHE_SECONDS = 30 * 60
SNIPPET_LENGTH = 500


@dataclass
class MediumPost:
    title: str
    link: str
    date: str
    snippet: str


_cache: list[MediumPost] = []
_cache_time = 0.0


def _make_snippet(raw_html: str) -> str:
    text = re.sub(r"<(figure|figcaption)[^>]*>.*?</\1>", " ", raw_html, flags=re.S)
    text = re.sub(r"<[^>]+>", " ", text)
    text = " ".join(html.unescape(text).split())
    if len(text) <= SNIPPET_LENGTH:
        return text
    return text[:SNIPPET_LENGTH].rsplit(" ", 1)[0] + "…"


def _to_post(entry: Any) -> MediumPost:
    content = entry.get("content") or [{}]
    raw_html = content[0].get("value", "") or entry.get("summary", "")
    published = entry.get("published_parsed")
    date = time.strftime("%B %d, %Y", published) if published else ""
    return MediumPost(
        title=entry.get("title", ""),
        link=entry.get("link", "").split("?")[0],
        date=date,
        snippet=_make_snippet(raw_html),
    )


async def get_posts() -> list[MediumPost]:
    """Return recent Medium posts, cached in memory. Falls back to the last good result on error."""
    global _cache, _cache_time
    if _cache and time.time() - _cache_time < CACHE_SECONDS:
        return _cache
    try:
        async with httpx.AsyncClient(timeout=10) as client:
            response = await client.get(FEED_URL)
            response.raise_for_status()
        feed = feedparser.parse(response.text)
        _cache = [_to_post(e) for e in feed.entries]
        _cache_time = time.time()
    except (httpx.HTTPError, ValueError):
        pass
    return _cache
