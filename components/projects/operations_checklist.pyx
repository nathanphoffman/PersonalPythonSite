from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def OperationsChecklist() -> Any:
    return (
        <Project link="" image="efc.PNG">
            <Title>Operations Checklist Website</Title>
            <Tech>(Professional) JQuery</Tech>
            <Tech>C# MVC</Tech>
            <Tech>SQL</Tech>
            <Tech>Azure Services</Tech>
            <Tech>Azure ServiceBus</Tech>
            <Tech>Azure AD</Tech>
            <Tech>ADAL.JS</Tech>
            A website which turned an Operations checklist digital and
            streamlined the foreclosure process.
        </Project>
    )
