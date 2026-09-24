from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def BerksHomes() -> Any:
    return (
        <Project image="berks.png" link="">
            <Title>Berks Homes</Title>
            <Tech>React</Tech>
            <Tech>Bootstrap</Tech>
            Worked on Berks Homes's internal home modeling, design, and planning website, an internal tool used by employees. Mainly maintenance, bug fixing, and added to their model feature tooling. I also was exposed to Domain Driven Development.
        </Project>
    )