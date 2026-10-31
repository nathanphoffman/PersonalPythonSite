from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects import (
    RealEstateSite,
    MusicSite,
    BlueSkyEnvySite,
    GraphingTool,
)
from components.projects.project_grid import ProjectGrid
from components.projects.project_title import ProjectTitle


@component
def YearPre2006() -> Any:
    return (
        <div>
            <ProjectTitle>pre-2006 (High School)</ProjectTitle>
            <ProjectGrid>
                <RealEstateSite />
                <MusicSite />
                <BlueSkyEnvySite />
                <GraphingTool />
            </ProjectGrid>
        </div>
    )
