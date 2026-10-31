from reactpy import component
from reactpy_jsx import jsx
from typing import Any
from components.card import Card
from components.utils import children_text


def Title(*children):
    return {"__slot__": "title", "text": children_text(list(children))}


def Tech(*children):
    return {"__slot__": "tech", "text": children_text(list(children))}


def _take_slot(children: list, slot: str) -> tuple[list[str], list]:
    texts = []
    rest = []
    for child in children:
        if isinstance(child, dict) and child.get("__slot__") == slot:
            texts.append(child["text"])
        else:
            rest.append(child)
    return texts, rest


@component
def Project(link: str = "", image: str = "", github: str = "", children=None) -> Any:
    children = children or []
    names, children = _take_slot(children, "title")
    name = names[0] if names else ""
    techs, children = _take_slot(children, "tech")

    image_src = "/static/img/" + image if image else ""

    return <Card title={name} link={link} image_src={image_src} tags={techs} github={github}>{children}</Card>
