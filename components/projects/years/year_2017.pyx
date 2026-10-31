from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects import CodingAstronomerOriginal, CentralizedWebService, OperationsChecklist
from components.projects.project_grid import ProjectGrid
from components.projects.project_title import ProjectTitle


@component
def Year2017() -> Any:
    return (
        <div>
            <ProjectTitle>2017</ProjectTitle>
            <ProjectGrid>
                <CodingAstronomerOriginal />
                <CentralizedWebService />
                <OperationsChecklist />
            </ProjectGrid>
        </div>
    )
