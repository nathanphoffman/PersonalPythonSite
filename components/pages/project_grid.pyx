from reactpy import component, html
from typing import Any

@component
def ProjectGrid(children=None) -> Any:
    return html.div({"class_name": "grid grid-cols-1 md:grid-cols-2 gap-4 mb-6"}, *(children or []))
