from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def FairyTaleAdventure() -> Any:
    return (
        <Project github="https://github.com/nathanphoffman/FairyTaleAnAdventure">
            <Title>The Faery Tale Adventure</Title>
            <Tech>Rust</Tech>
            <Tech>SDL2</Tech>
            This is a Linux port of the 1987 Amiga game: "The Faery Tale Adventure," a game from my childhood that I converted with the help of Claude to Rust. I have future plans to also add to the game once the conversion is totally complete.  
        </Project>
    )