from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def PhotoGallery() -> Any:
    return (
        <Project image="gallery.png" link="/examples/photogallery/index.html">
            <Title>Photo Gallery</Title>
            <Tech>JQuery</Tech>
            <Tech>PHP</Tech>
            <Tech>JavaScript</Tech>
            A simple site using a photo gallery library to show off some of my photos.
        </Project>
    )
