from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects import LuckyVitamin2020, VueCalendar
from components.projects.project_grid import ProjectGrid
from components.projects.project_title import ProjectTitle


@component
def Year2020() -> Any:
    return (
        <div>
            <ProjectTitle>2020</ProjectTitle>
            <ProjectGrid>
                <LuckyVitamin2020 />
                <VueCalendar />
            </ProjectGrid>
        </div>
    )
