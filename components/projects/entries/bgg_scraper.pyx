from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.links import ExternalLink
from components.projects.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def BggScraper() -> Any:
    return (
        <Project github="https://github.com/nathanphoffman/BGGScraper" link="">
            <Title>BGG Scraper</Title>
            <Tech>Typescript</Tech>
           This was originally created by hand as a scraper for BGG (Board Game Geek) platform to rank board games using a ranking system of my own design, and allowing game rankings to coalesce around certain weight preferences. (This is now defunct as it was integrated into the GraphData project).{" "}<ExternalLink href="https://data.nathanhoffman.me/board-games">GraphData listing</ExternalLink>{" "}for the scraper data.
        </Project>
    )