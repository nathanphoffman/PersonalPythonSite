from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def VueCalendar() -> Any:
    return (
        <Project image="" link="">
            <Title>Vue Calendar</Title>
            <Tech>Node</Tech>
            <Tech>Mongo</Tech>
            <Tech>Vue</Tech>
            <Tech>CSS</Tech>
            Creating a calendar with Node, MongoDB, Vue and pure-CSS.
        </Project>
    )
