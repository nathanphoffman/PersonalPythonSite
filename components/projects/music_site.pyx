from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def MusicSite() -> Any:
    return (
        <Project link="">
            <Title>Music Site</Title>
            <Tech>Plain HTML</Tech>
            <Tech>JavaScript</Tech>
            <Tech>some Flash</Tech>
            <Tech>My Own CSS/Design</Tech>
            A simple website for a friend's dad's band, no longer available online.
        </Project>
    )
