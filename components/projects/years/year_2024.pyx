from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects import BggScraper, TinyMightyRpg
from components.projects.project_grid import ProjectGrid
from components.projects.project_title import ProjectTitle


@component
def Year2024() -> Any:
    return (
        <div>
            <ProjectTitle>2024</ProjectTitle>
            <ProjectGrid>
                <BggScraper />
                <TinyMightyRpg />
            </ProjectGrid>
        </div>
    )
