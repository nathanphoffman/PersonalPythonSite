from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def ReactNativeTesting() -> Any:
    return (
        <Project image="" link="">
            <Title>React Native Testing</Title>
            <Tech>React</Tech>
            <Tech>Bootstrap</Tech>
            A Combined React Native / Web Framework to allow web code to be more easily converted to React Native rather than needing to mantain sizably different components for app vs web display.
        </Project>
    )