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
            This is the first decent sized product to be created with Deor. It is a terminal editor, which supports GIT, file browsing, mouse/keyboard controls, clipboard, etc.  Also currently adding spreadsheet support. It was my answer to being frustrated with VSCode and high-memory usage of IDEs -- and yet not being able to find a decent terminal editor that didn't have VI controls.
        </Project>
    )