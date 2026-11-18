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
            <Tech>C# .NET 10</Tech>
            <Tech>Postgres</Tech>
            A multiplayer space strategy game in the style of OGame, played in a shared galaxy. It has a Next.js front end, a C# .NET 10 server that holds the game rules, and a Postgres database, with live updates over SignalR.
        </Project>
    )
