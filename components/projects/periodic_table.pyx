from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def PeriodicTable() -> Any:
    return (
        <Project image="periodictable.png" link="/examples/periodictable/index.html">
            <Title>Periodic Table</Title>
            <Tech>ReactJS</Tech>
            A ReactJS experiment to try and render a responsive table manually:
            it renders in three different forms.
        </Project>
    )
