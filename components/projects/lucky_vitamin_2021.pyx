from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def LuckyVitamin2021() -> Any:
    return (
        <Project image="luckyvitamin.png" link="">
            <Title>Lucky Vitamin (React Conversion)</Title>
            <Tech>React</Tech>
            <Tech>Typescript</Tech>
            <Tech>C#</Tech>
            <Tech>.NET 4.x</Tech>
            <Tech>Web API</Tech>
            Continued my work at LuckyVitamin but also worked on a React and Typescript conversion of the JQuery UI.
        </Project>
    )