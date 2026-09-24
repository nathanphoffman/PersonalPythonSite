from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def RevenueManagementPricing() -> Any:
    return (
        <Project image="arc.png" link="">
            <Title>Revenue Management Pricing Website</Title>
            <Tech>(Professional) JQuery</Tech>
            <Tech>C# MVC</Tech>
            <Tech>Datatables</Tech>
            Extremely complex multiple-table, multiple-screen auto-updating interface.
        </Project>
    )
