from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def ApolloGame() -> Any:
    return (
        <Project link="">
            <Title>Apollo Game</Title>
            <Tech>JavaScript</Tech>
            <Tech>PhaserJS</Tech>
            My first experiment with PhaserJS, themed as the Apollo Moon landings.
        </Project>
    )
