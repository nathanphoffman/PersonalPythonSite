from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def RealEstateSite() -> Any:
    return (
        <Project link="">
            <Title>Real-Estate Site</Title>
            <Tech>Plain HTML</Tech>
            <Tech>My Own CSS/Design</Tech>
            A simple website for a small real-estate company for a friend's dad,
            no longer available online.
        </Project>
    )
