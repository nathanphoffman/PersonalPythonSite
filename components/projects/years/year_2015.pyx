from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects import AccountingCheck, BpmSolution, ApolloGame
from components.projects.project_grid import ProjectGrid
from components.projects.project_title import ProjectTitle


@component
def Year2015() -> Any:
    return (
        <div>
            <ProjectTitle>2015</ProjectTitle>
            <ProjectGrid>
                <AccountingCheck />
                <BpmSolution />
                <ApolloGame />
            </ProjectGrid>
        </div>
    )
