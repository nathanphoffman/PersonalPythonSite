from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects import FormsSystem, DeveloperAdminSite
from components.projects.project_grid import ProjectGrid
from components.projects.project_title import ProjectTitle


@component
def Year2018() -> Any:
    return (
        <div>
            <ProjectTitle>2018</ProjectTitle>
            <ProjectGrid>
                <FormsSystem />
                <DeveloperAdminSite />
            </ProjectGrid>
        </div>
    )
