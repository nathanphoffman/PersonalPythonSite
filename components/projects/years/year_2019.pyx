from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects import VexmenRobotics, JetSenseFacebook, IrrationalCalculator
from components.projects.project_grid import ProjectGrid
from components.projects.project_title import ProjectTitle


@component
def Year2019() -> Any:
    return (
        <div>
            <ProjectTitle>2019</ProjectTitle>
            <ProjectGrid>
                <VexmenRobotics />
                <JetSenseFacebook />
                <IrrationalCalculator />
            </ProjectGrid>
        </div>
    )
