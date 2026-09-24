from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def VexmenRobotics() -> Any:
    return (
        <Project image="vexmen.png" link="http://order.vexmen.com/#!/order">
            <Title>Vexmen Robotics Website</Title>
            <Tech>(Professional) MithrilJS</Tech>
            <Tech>NodeJS</Tech>
            <Tech>Webscraper</Tech>
            Created a website for a local Brandywine robotics organization and their school kids.
        </Project>
    )
