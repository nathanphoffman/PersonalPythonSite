from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def TzaarNet() -> Any:
    return (
        <Project github="https://github.com/nathanphoffman/TzaarNeuralNet" install_slug="tzaarnet">
            <Title>Tzaar Net</Title>
            <Tech>Python</Tech>
            <Tech>numpy</Tech>
            A small neural network that teaches itself the board game Tzaar by playing against itself, I have experimented with various strategies: donor and anti-donor weights, different layer sizes and depths and pitting it against other trained-from-scratch AI opponents.
        </Project>
    )