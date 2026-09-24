from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def NightEmber() -> Any:
    return (
        <Project image="nightember.png" link="/examples/nightember/index.html">
            <Title>Night Ember</Title>
            <Tech>JQuery</Tech>
            <Tech>My Own CSS/Design</Tech>
            A simple unit conversion app for astronomical units.
        </Project>
    )
