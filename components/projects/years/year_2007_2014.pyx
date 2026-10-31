from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects import NightEmber, Webiota, PhotoGallery
from components.projects.project_grid import ProjectGrid
from components.projects.project_title import ProjectTitle


@component
def Year20072014() -> Any:
    return (
        <div>
            <ProjectTitle>2007-2014</ProjectTitle>
            <ProjectGrid>
                <NightEmber />
                <Webiota />
                <PhotoGallery />
            </ProjectGrid>
        </div>
    )
