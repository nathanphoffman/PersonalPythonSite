from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def DeorPico() -> Any:
    return (
        <Project image="deor-pico.png" link="https://deor.dev/pico" github="https://github.com/nathanphoffman/DeorPico">
            <Title>Deor Pico (DPico)</Title>
            <Tech>Deor</Tech>
            <Tech>Rust</Tech>
            <Tech>HTML</Tech>
            <Tech>Tailwind</Tech>
            <Tech>TS</Tech>
            This is the first decent sized product to be created with Deor. It is a terminal editor, which supports GIT, file browsing, mouse/keyboard controls, clipboard, etc.  Also currently adding spreadsheet support.
        </Project>
    )