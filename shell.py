"""Static "app shell" HTML served with the first page load.

ReactPy sends an empty page and only draws the UI once its WebSocket connects.
To avoid a blank flash, we pre-render the navbar and header (which never change)
to plain HTML and put them in the initial page. Once ReactPy renders into #app,
CSS in static/input.css hides the shell.
"""

from typing import Any

from components.header import Header
from components.navbar import Navbar
from reactpy import component, html
from reactpy.core.layout import Layout
from reactpy.utils import vdom_to_html


def _plain_attributes(attributes: dict[str, Any]) -> dict[str, Any]:
    """Drop None and callable attributes (event handlers) and rename className to class."""
    plain = {
        name: value
        for name, value in attributes.items()
        # Event handlers are Python callables and can't be written into static HTML
        if value is not None and not callable(value)
    }

    # The server-rendered HTML only understands the plain `class` attribute
    for class_attribute in ("className", "class_name"):
        if class_attribute in plain:
            plain["class"] = plain.pop(class_attribute)

    return plain


def _to_plain_vdom(model: Any) -> Any:
    """Turn a rendered ReactPy model into plain HTML elements vdom_to_html can handle."""

    if not isinstance(model, dict):
        return model

    return {
        "tagName": model.get("tagName", ""),
        "attributes": _plain_attributes(model.get("attributes", {})),
        "children": [_to_plain_vdom(child) for child in model.get("children", [])],
    }


@component
def _Shell() -> Any:
    # Same wrapper classes as the live app, so the swap from shell to app doesn't shift layout
    return html.div({"class_name": "min-h-screen bg-white"}, Navbar(), Header())


async def render_shell_html() -> str:
    # Render once through ReactPy's own layout so the shell matches what the client will draw
    async with Layout(_Shell()) as layout:
        update = await layout.render()

    return vdom_to_html(_to_plain_vdom(update["model"]))
