from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects import LuckyVitamin2021
from components.projects.project_grid import ProjectGrid
from components.projects.project_title import ProjectTitle


@component
def Year20212022() -> Any:
    return (
        <div>
            <ProjectTitle>2021-2022</ProjectTitle>
            <ProjectGrid>
                <LuckyVitamin2021 />
            </ProjectGrid>
        </div>
    )
