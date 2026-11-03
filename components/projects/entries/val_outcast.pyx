from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def ValOutcast() -> Any:
    return (
        <Project image="valoutcast_still.png" github="https://github.com/nathanphoffman/ValOutcast" install_slug="valoutcast">
            <Title>ValOutcast</Title>
            <Tech>C#</Tech>
            <Tech>C++</Tech>
            <Tech>Python</Tech>
            A bridge between Star Wars Jedi Knight: Jedi Outcast and Valheim. Valheim draws the world while Jedi Outcast runs the player (movement, saber, combat), and a small plugin in each game passes messages between them.
        </Project>
    )