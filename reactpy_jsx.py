import re
from collections.abc import Callable
from typing import Any

from reactpy import html as _html

# An uppercase letter followed by lowercase ones, preceded by any character: "myHTMLPage" -> "myHTML_Page"
_WORD_START = re.compile(r"(.)([A-Z][a-z]+)")
# A lowercase letter or digit directly followed by an uppercase one: "myHTML" -> "my_HTML"
_LOWER_TO_UPPER = re.compile(r"([a-z0-9])([A-Z])")


def _to_snake_case(name: str) -> str:
    with_word_breaks = _WORD_START.sub(r"\1_\2", name)
    return _LOWER_TO_UPPER.sub(r"\1_\2", with_word_breaks).lower()


def _snake_case_props(props: dict[str, Any] | None) -> dict[str, Any]:
    return {_to_snake_case(name): value for name, value in (props or {}).items()}


def _flatten_children(children: tuple[Any, ...]) -> list[Any]:
    """Flatten one level of nested lists and drop None children."""
    flat: list[Any] = []
    for child in children:
        items = child if isinstance(child, list) else [child]
        flat.extend(item for item in items if item is not None)
    return flat


def _unwrap_children(children: tuple[Any, ...]) -> list[Any]:
    """Use a single list child as the children list, otherwise all children."""
    if children and isinstance(children[0], list):
        return children[0]
    return list(children)


def _html_element(tag_name: str, props: dict[str, Any] | None, children: tuple[Any, ...]) -> Any:
    converted = _snake_case_props(props)
    element: Callable[..., Any] = getattr(_html, tag_name)
    flat = _flatten_children(children)
    return element(converted, *flat) if converted else element(*flat)


def _component_element(
    component_function: Callable[..., Any],
    props: dict[str, Any] | None,
    children: tuple[Any, ...],
) -> Any:
    # @component Python function: props become snake_case kwargs
    converted = _snake_case_props(props)
    child_list = _unwrap_children(children)
    if child_list:
        return component_function(children=child_list, **converted)
    return component_function(**converted)


def _vdom_element(
    vdom_constructor: Callable[..., Any],
    props: dict[str, Any] | None,
    children: tuple[Any, ...],
) -> Any:
    # VDOM constructor (e.g. from export()): pass the props dict as-is with original keys
    child_list = _unwrap_children(children)
    if props:
        return vdom_constructor(props, *child_list)
    return vdom_constructor(*child_list) if child_list else vdom_constructor()


def jsx(
    element_type: str | Callable[..., Any],
    props: dict[str, Any] | None = None,
    *children: Any,
) -> Any:
    """Bridge between pyjsx and ReactPy.

    pyjsx compiles <h1>Hello</h1> → jsx("h1", {}, "Hello")
    This function maps those calls to reactpy html.* elements.
    """
    if isinstance(element_type, str):
        return _html_element(element_type, props, children)
    if hasattr(element_type, "__wrapped__"):
        return _component_element(element_type, props, children)
    return _vdom_element(element_type, props, children)
