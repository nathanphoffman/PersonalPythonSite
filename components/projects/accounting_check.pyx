from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def AccountingCheck() -> Any:
    return (
        <Project image="path.png" link="">
            <Title>Accounting Check Website</Title>
            <Tech>(Professional) JQuery</Tech>
            <Tech>C# MVC</Tech>
            <Tech>SQL</Tech>
            An application for tracking and managing company checks.
        </Project>
    )
