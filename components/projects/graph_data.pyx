from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def GraphData() -> Any:
    return (
        <Project link="https://data.nathanhoffman.me" github="https://github.com/nathanphoffman/GraphData">
            <Title>GraphData</Title>
            <Tech>React</Tech>
            <Tech>TypeScript</Tech>
            <Tech>Vite</Tech>
            A small site of interactive charts built from my own data sets, covering things like programming language trends, science, tabletop games and calculators. Adding a chart is just a data file and one component.
        </Project>
    )