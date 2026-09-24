from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def LuckyVitamin2020() -> Any:
    return (
        <Project image="luckyvitamin.png" link="">
            <Title>Lucky Vitamin</Title>
            <Tech>JQuery</Tech>
            <Tech>C#</Tech>
            <Tech>.NET 4.x</Tech>
            <Tech>Web API</Tech>
            Worked for a vitamin company, worked on SEO, PDP (product detail page), the cart, and the backordering/instock inventory management system.
        </Project>
    )