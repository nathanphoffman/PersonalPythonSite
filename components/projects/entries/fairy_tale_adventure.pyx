from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def FairyTaleAdventure() -> Any:
    return (
        <Project image="faery_tale_adventure.png" github="https://github.com/nathanphoffman/FairyTaleAnAdventure" install_slug="fairytale">
            <Title>Fairy Tale: An Adventure</Title>
            <Tech>Rust</Tech>
            <Tech>SDL2</Tech>
            This is a Linux port of the 1987 Amiga game: "The Faery Tale Adventure," a game from my childhood that I converted with the help of Claude to Rust. I have future plans to also add to the game once the conversion is totally complete.  
        </Project>
    )