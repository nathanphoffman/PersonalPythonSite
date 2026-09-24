from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def CodingAstronomerRefresh() -> Any:
    return (
        <Project image="codingastronomer.png" link="https://codingastronomer.dev">
            <Title>Coding Astronomer (Refresh)</Title>
            <Tech>Python</Tech>
            <Tech>ReactPy</Tech>
            <Tech>Tailwind</Tech>
            Migrated an old reactjs project that I had manually created in the past to ReactPy and Pyx using some help from Claude.
        </Project>
    )
