from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def DeveloperAdminSite() -> Any:
    return (
        <Project link="">
            <Title>Developer Admin Site</Title>
            <Tech>(Professional) C# .Net Core 2.0</Tech>
            <Tech>ReactJS</Tech>
            <Tech>Gulp</Tech>
            <Tech>Webpack</Tech>
            Created a simple administration site where we could monitor the run
            of several of our back-end services.
        </Project>
    )
