"""Static "app shell" HTML served with the first page load.

ReactPy sends an empty page and only draws the UI once its WebSocket connects.
To avoid a blank flash, we pre-render the navbar and header (which never change)
to plain HTML and put them in the initial page. Once ReactPy renders into #app,
CSS in static/input.css hides the shell.
"""

from typing import Any

from reactpy import component, html
from reactpy.core.layout import Layout
from reactpy.utils import vdom_to_html

from components.general.header import Header
from components.general.navbar import Navbar


def _to_plain_vdom(model: Any) -> Any:
    """Turn a rendered ReactPy model into plain HTML elements vdom_to_html can handle."""
    if not isinstance(model, dict):
        return model
    tag = model.get("tagName", "")
    attributes = {k: v for k, v in model.get("attributes", {}).items() if v is not None and not callable(v)}
    for key in ("className", "class_name"):
        if key in attributes:
            attributes["class"] = attributes.pop(key)
    return {
        "tagName": tag,
        "attributes": attributes,
        "children": [_to_plain_vdom(c) for c in model.get("children", [])],
    }


@component
def _Shell() -> Any:
    return html.div({"class_name": "min-h-screen bg-white"}, Navbar(), Header())


async def render_shell_html() -> str:
    async with Layout(_Shell()) as layout:
        update = await layout.render()
    return vdom_to_html(_to_plain_vdom(update["model"]))
