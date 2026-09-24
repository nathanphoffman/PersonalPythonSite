from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def FoodComparison() -> Any:
    return (
        <Project image="food-comparison.png" link="https://food.nathanhoffman.me" github="https://github.com/nathanphoffman/FoodComparisonMicroServices">
            <Title>Food Comparison</Title>
            <Tech>Next.js</Tech>
            <Tech>TypeScript</Tech>
            <Tech>Tailwind</Tech>
            <Tech>Rust</Tech>
            <Tech>WASM</Tech>
            <Tech>C# .NET</Tech>
            <Tech>SQLite</Tech>
            <Tech>Docker</Tech>
            A Tool for comparing foods
        </Project>
    )