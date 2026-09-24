from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def Webiota() -> Any:
    return (
        <Project image="webiota.png" link="">
            <Title>Webiota</Title>
            <Tech>JQuery</Tech>
            <Tech>PHP</Tech>
            <Tech>JavaScript</Tech>
            An astronomy site, which led me to landing my first professional job
            in development. The domain lapsed, screenshots from the wayback machine.
        </Project>
    )
