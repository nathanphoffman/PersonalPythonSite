"""One hand-entered highlighted blog post.

image is a file name in static/img. Leave fields empty to show a card without them.
"""
from dataclasses import dataclass


@dataclass(frozen=True)
class HighlightedPost:
    title: str
    link: str
    date: str = ""
    snippet: str = ""
    image: str = ""
