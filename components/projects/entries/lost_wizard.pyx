from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def LostWizard() -> Any:
    return (
        <Project image="lostwizard.png" link="/lostwizard">
            <Title>Lost Wizard</Title>
            <Tech>JavaScript</Tech>
            <Tech>PhaserJS</Tech>
            I created a framework for PhaserJS which could parse files from the
            Tiled Map Editor, and used configuration files to create a game.
        </Project>
    )
