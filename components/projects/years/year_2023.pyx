from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects import BerksHomes
from components.projects.project_grid import ProjectGrid
from components.projects.project_title import ProjectTitle


@component
def Year2023() -> Any:
    return (
        <div>
            <ProjectTitle>2023</ProjectTitle>
            <ProjectGrid>
                <BerksHomes />
            </ProjectGrid>
        </div>
    )
