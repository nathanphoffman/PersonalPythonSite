from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def BpmSolution() -> Any:
    return (
        <Project image="workflows.png" link="">
            <Title>BPM Solution</Title>
            <Tech>(Professional) JQuery</Tech>
            <Tech>PHP</Tech>
            <Tech>MySQL</Tech>
            <Tech>ProcessMaker BPM</Tech>
            <Tech>C# Console Applications</Tech>
            My first professional coding project, I brought our BPM process
            inhouse to an open source solution.
        </Project>
    )
