from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def LuckyVitamin2022() -> Any:
    return (
        <Project image="codingastronomer.png" link="">
            <Title>Lucky Vitamin</Title>
            <Tech>React</Tech>
            <Tech>Bootstrap</Tech>
            Worked for Luckyvitamin
        </Project>
    )
