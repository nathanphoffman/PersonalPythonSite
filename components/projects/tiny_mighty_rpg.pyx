from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def TinyMightyRpg() -> Any:
    return (
        <Project image="tinymightyrpg.png" link="https://tinymightyrpg.com">
            <Title>Tiny Mighty RPG</Title>
            <Tech>Vue</Tech>
            <Tech>Custom Template</Tech>
            A website I created before even discovering modern AI, was originally created 100% from scratch, the template is still mostly original, the art was done by hand by one of my friends as well. The goal of the site was to serve as a marketing page for an RPG my friends and I designed.
        </Project>
    )