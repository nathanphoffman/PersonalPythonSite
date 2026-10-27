import html
import logging
import re
import time
from dataclasses import dataclass
from typing import Any

import feedparser  # type: ignore[import-untyped]
import httpx

FEED_URL = "https://medium.com/feed/@nathanphoffman"
logger = logging.getLogger(__name__)

CACHE_SECONDS = 30 * 60
FEED_TIMEOUT_SECONDS = 10
SNIPPET_LENGTH = 500


@dataclass
class MediumPost:
    title: str
    link: str
    date: str
    snippet: str


_cache: list[MediumPost] = []
_cache_time = 0.0


# <figure>...</figure> or <figcaption>...</figcaption> including contents; \1 matches the opening tag name
_FIGURE_BLOCK = re.compile(r"<(figure|figcaption)[^>]*>.*?</\1>", re.S)
# Any single HTML tag, e.g. <p> or <a href="...">
_HTML_TAG = re.compile(r"<[^>]+>")


def _make_snippet(raw_html: str) -> str:
    text = _FIGURE_BLOCK.sub(" ", raw_html)
    text = _HTML_TAG.sub(" ", text)
    text = " ".join(html.unescape(text).split())
    if len(text) <= SNIPPET_LENGTH:
        return text
    return text[:SNIPPET_LENGTH].rsplit(" ", 1)[0] + "…"


def _to_post(entry: Any) -> MediumPost:
    """Convert one feedparser entry into a MediumPost, tolerating missing fields."""
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


async def _fetch_feed_text() -> str:
    async with httpx.AsyncClient(timeout=FEED_TIMEOUT_SECONDS) as client:
        response = await client.get(FEED_URL)
        response.raise_for_status()
    return response.text


async def get_posts() -> list[MediumPost]:
    """Return recent Medium posts, cached in memory. Falls back to the last good result on error."""
    global _cache, _cache_time
    if _cache and time.time() - _cache_time < CACHE_SECONDS:
        return _cache
    try:
        feed = feedparser.parse(await _fetch_feed_text())
        _cache = [_to_post(entry) for entry in feed.entries]
        _cache_time = time.time()
    except (httpx.HTTPError, ValueError) as error:
        logger.warning("Medium feed fetch failed, serving cached posts: %s", error)
    return _cache
