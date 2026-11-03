from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def SpaceGame3d() -> Any:
    return (
        <Project image="space_game_3d.png" github="https://github.com/nathanphoffman/3dSpaceGame" install_slug="3dspacegame">
            <Title>3D Space Game</Title>
            <Tech>Rust</Tech>
            <Tech>Deor</Tech>
            <Tech>macroquad</Tech>
            A space combat game I created in the style of Descent and X-Wing. I built the initial form with rust pair-coding with Claude and then converted the entire project to Deor using a ralph loop and fully agentic AI.
        </Project>
    )