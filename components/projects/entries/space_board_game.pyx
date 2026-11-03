from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def SpaceBoardGame() -> Any:
    return (
        <Project github="https://github.com/nathanphoffman/SpaceGame">
            <Title>Space Board Game</Title>
            <Tech>TypeScript</Tech>
            <Tech>Next.js</Tech>
            <Tech>Postgres</Tech>
            A small single-player space strategy game in the style of OGame. It runs on Next.js with a Postgres database that sets itself up on the first request.
        </Project>
    )
