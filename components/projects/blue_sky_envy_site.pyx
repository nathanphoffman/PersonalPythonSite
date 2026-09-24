from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def BlueSkyEnvySite() -> Any:
    return (
        <Project link="">
            <Title>Blue Sky Envy Site</Title>
            <Tech>Plain HTML My Own CSS/Design</Tech>
            A simple website for a local band, no longer available.
        </Project>
    )
