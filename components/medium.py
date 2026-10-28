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

# Posts rarely change, so a half-hour cache keeps the feed fresh without extra requests
CACHE_SECONDS = 30 * 60

# Short timeout so a slow Medium response can't hang the page that is waiting on it
FEED_TIMEOUT_SECONDS = 10

# Long enough for a useful preview, short enough that cards stay a similar height
SNIPPET_LENGTH = 500


@dataclass
class MediumPost:
    title: str
    link: str
    date: str
    snippet: str


# Module-level cache so repeat visits don't hit Medium on every page load
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

    # Cut at a word boundary so the snippet doesn't end mid-word
    return text[:SNIPPET_LENGTH].rsplit(" ", 1)[0] + "…"


def _to_post(entry: Any) -> MediumPost:
    """Convert one feedparser entry into a MediumPost, tolerating missing fields."""
    content = entry.get("content") or [{}]
    raw_html = content[0].get("value", "") or entry.get("summary", "")

    # Feeds can omit the date, so fall back to an empty string instead of failing
    published = entry.get("published_parsed")
    date = time.strftime("%B %d, %Y", published) if published else ""

    return MediumPost(
        title=entry.get("title", ""),
        # Medium appends tracking params (?source=rss) that we don't want in links
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

    # Serve the cache while it is fresh; an empty cache always refetches
    if _cache and time.time() - _cache_time < CACHE_SECONDS:
        return _cache

    try:
        feed = feedparser.parse(await _fetch_feed_text())
        _cache = [_to_post(entry) for entry in feed.entries]
        _cache_time = time.time()
    except (httpx.HTTPError, ValueError) as error:
        # Keep showing the last good posts rather than an error if Medium is down
        logger.warning("Medium feed fetch failed, serving cached posts: %s", error)

    return _cache
