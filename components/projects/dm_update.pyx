from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def DmUpdate() -> Any:
    return (
        <Project image="dmupdate.png" link="">
            <Title>Operations Reporting Website (DM Update)</Title>
            <Tech>(Professional) ReactJS</Tech>
            <Tech>C# Web API</Tech>
            <Tech>Linq</Tech>
            <Tech>Azure Services</Tech>
            <Tech>Azure ServiceBus</Tech>
            <Tech>Azure AD</Tech>
            <Tech>Bootstrap</Tech>
            My first professional use of ReactJS, and build tools like Gulp, Webpack, etc.
        </Project>
    )
