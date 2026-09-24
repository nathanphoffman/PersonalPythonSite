from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def FormsSystem() -> Any:
    return (
        <Project image="forms.png" link="">
            <Title>Forms System (BPM/Workflows)</Title>
            <Tech>(Professional) VueJS</Tech>
            <Tech>Web Api</Tech>
            <Tech>Azure Service Bus</Tech>
            <Tech>SQL</Tech>
            <Tech>and MongoDB Storage</Tech>
            Created a BPM solution; it was a 3 year project, completed in 2018
            and touched almost every department.
        </Project>
    )
