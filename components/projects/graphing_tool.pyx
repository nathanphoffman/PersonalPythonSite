from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def GraphingTool() -> Any:
    return (
        <Project link="">
            <Title>Graphing Tool</Title>
            <Tech>C++</Tech>
            A simple console application in C++ for outputting x,y plot files.
        </Project>
    )
