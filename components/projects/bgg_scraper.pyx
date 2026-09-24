from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def BggScraper() -> Any:
    return (
        <Project image="codingastronomer.png" link="">
            <Title>BGG Scraper</Title>
            <Tech>React</Tech>
            <Tech>Bootstrap</Tech>
            Worked on a Board Game Scraper
        </Project>
    )
