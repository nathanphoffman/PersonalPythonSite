from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def CentralizedWebService() -> Any:
    return (
        <Project link="">
            <Title>A Centralized Web Service</Title>
            <Tech>(Professional) C# Web Api</Tech>
            <Tech>OAuth</Tech>
            <Tech>Owin</Tech>
            <Tech>NodeJS</Tech>
            <Tech>ExpressJS</Tech>
            <Tech>MongoDB</Tech>
            A web service designed to integrate several of our existing systems
            and redirect them to multiple point-of-sales during a point-of-sale transition.
        </Project>
    )
