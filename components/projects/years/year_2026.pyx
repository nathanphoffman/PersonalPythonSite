from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects import (
    DeorLanguage,
    SpaceGame3d,
    ContactApp,
    GraphData,
    FairyTaleAdventure,
    DeorPico,
    FoodComparison,
    CodeQualityScript,
    NewWebProject,
    ValOutcast,
    SolarBit,
    CodingAstronomerRefresh,
    TzaarNet,
    NhBlog,
    Project34004,
    ProtonDriveSync,
)
from components.projects.project_grid import ProjectGrid
from components.projects.project_title import ProjectTitle


@component
def Year2026() -> Any:
    return (
        <div>
            <ProjectTitle>2026</ProjectTitle>
            <ProjectGrid>
                <DeorLanguage />
                <SpaceGame3d />
                <ContactApp />
                <GraphData />
                <FairyTaleAdventure />
                <DeorPico />
                <FoodComparison />
                <CodeQualityScript />
                <NewWebProject />
                <ValOutcast />
                <SolarBit />
                <CodingAstronomerRefresh />
                <TzaarNet />
                <NhBlog />
                <Project34004 />
                <ProtonDriveSync />
            </ProjectGrid>
        </div>
    )
