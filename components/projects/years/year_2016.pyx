from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects import (
    DmUpdate,
    LostWizard,
    PeriodicTable,
    RevenueManagementPricing,
)
from components.projects.project_grid import ProjectGrid
from components.projects.project_title import ProjectTitle


@component
def Year2016() -> Any:
    return (
        <div>
            <ProjectTitle>2016</ProjectTitle>
            <ProjectGrid>
                <DmUpdate />
                <LostWizard />
                <PeriodicTable />
                <RevenueManagementPricing />
            </ProjectGrid>
        </div>
    )
