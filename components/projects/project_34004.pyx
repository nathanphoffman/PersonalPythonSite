from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def Project34004() -> Any:
    return (
        <Project github="https://github.com/nathanphoffman/34004Project">
            <Title>34004 Project</Title>
            <Tech>Deor</Tech>
            <Tech>Rust</Tech>
            <Tech>Pico 2</Tech>
            An embedded project that runs on a Raspberry Pi Pico 2 and drives three 20x4 LCD panels. The kernel and the application are written in Deor, and it can also be simulated in Wokwi.
        </Project>
    )