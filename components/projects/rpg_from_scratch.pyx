from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def RpgFromScratch() -> Any:
    return (
        <Project image="codingastronomer.png" link="">
            <Title>RPG From Scratch</Title>
            <Tech>React</Tech>
            <Tech>Bootstrap</Tech>
            I started working on a small CRPG from scratch using vanilla JS and TS to render a basic 2d game. It uses a custom canvas engine to render the layers of the game and uses 0 AI to have something completely my own.
            </Project>
    )
