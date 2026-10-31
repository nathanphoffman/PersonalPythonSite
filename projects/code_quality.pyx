from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def CodeQualityScript() -> Any:
    return (
        <Project github="https://github.com/nathanphoffman/CodeQualityChecker">
            <Title>Code Quality Script</Title>
            <Tech>Python</Tech>
            <Tech>tree-sitter</Tech>
            A script that grades any project against my own coding rules (small functions, clear names, simple code). It gives a score out of 100 and can compare a branch against main to show what got better or worse.
        </Project>
    )