from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def SpaceGame3d() -> Any:
    return (
        <Project github="https://github.com/nathanphoffman/3dSpaceGame">
            <Title>3D Space Game</Title>
            <Tech>Rust</Tech>
            <Tech>macroquad</Tech>
            A 3D space combat game in the style of Descent and X-Wing. Fly around a scale-model solar system, mine asteroids, dock at stations and fight, with an online shared-universe mode being built.
        </Project>
    )