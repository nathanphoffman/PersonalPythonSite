from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def IrrationalCalculator() -> Any:
    return (
        <Project image="console.png" link="https://github.com/nathanphoffman/IrrationalCalculator">
            <Title>Irrational Calculator</Title>
            <Tech>C# .NET Core 2.2</Tech>
            Created a console application on 24 hour notice as a sample of my work,
            calculates irrational numbers.
        </Project>
    )
