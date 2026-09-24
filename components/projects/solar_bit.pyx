from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def SolarBit() -> Any:
    return (
        <Project>
            <Title>Solar Bit</Title>
            <Tech>C#</Tech>
            <Tech>Go</Tech>
            An attempt to create a web deployment platform (like Railway), still highly experimental and not yet published, likely going to become an open source project.
        </Project>
    )
