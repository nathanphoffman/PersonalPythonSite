from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def CodingAstronomerOriginal() -> Any:
    return (
        <Project image="codingastronomer.png" link="">
            <Title>Coding Astronomer (This Site)</Title>
            <Tech>ReactJS</Tech>
            <Tech>Bootstrap</Tech>
            <Tech>CleanBlog Template</Tech>
            A personal site (this site) to allow people who followed me on my
            Wordpress blog to find me.
        </Project>
    )
