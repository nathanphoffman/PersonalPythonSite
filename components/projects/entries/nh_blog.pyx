from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def NhBlog() -> Any:
    return (
        <Project link="https://nathanhoffman.me" github="https://github.com/nathanphoffman/NHBlog">
            <Title>NH Blog</Title>
            <Tech>New Web</Tech>
            <Tech>Markdown</Tech>
            <Tech>Node</Tech>
            My personal blog, built on the New Web Project. The posts are plain markdown files that get served as a static site, with no framework or build step for the content.
        </Project>
    )