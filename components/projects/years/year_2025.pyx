from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects import WeatherSite, RpgFromScratch
from components.projects.project_grid import ProjectGrid
from components.projects.project_title import ProjectTitle


@component
def Year2025() -> Any:
    return (
        <div>
            <ProjectTitle>2025</ProjectTitle>
            <ProjectGrid>
                <WeatherSite />
                <RpgFromScratch />
            </ProjectGrid>
        </div>
    )
