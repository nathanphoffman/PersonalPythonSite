from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def BggScraper() -> Any:
    return (
        <Project link="">
            <Title>BGG Scraper</Title>
            <Tech>Typescript</Tech>
           This was originally created by hand as a scraper for BGG (Board Game Geek) platform to rank board games using a ranking system of my own design, and allowing game rankings to coalesce around certain weight preferences.
        </Project>
    )