from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def TzaarNet() -> Any:
    return (
        <Project github="https://github.com/nathanphoffman/TzaarNeuralNet">
            <Title>Tzaar Net</Title>
            <Tech>Python</Tech>
            <Tech>numpy</Tech>
            A small neural network that teaches itself the board game Tzaar by playing against itself, plus a web page to play against any of its trained generations.
        </Project>
    )