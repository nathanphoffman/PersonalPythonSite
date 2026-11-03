from reactpy import component, create_context, use_context
from reactpy_jsx import jsx
from typing import Any
from components.card import Card
from components.utils import children_text


# True while a project card is shown inside its install modal, where a link to that modal would point at itself
InsideModal = create_context(False)


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
def Project(link: str = "", image: str = "", github: str = "", install_slug: str = "", children=None) -> Any:
    children = children or []
    names, children = _take_slot(children, "title")
    name = names[0] if names else ""
    techs, children = _take_slot(children, "tech")

    in_modal = use_context(InsideModal)
    # In the modal the guide shows its own bigger picture, so the thumbnail would just repeat it
    image_src = "/static/img/" + image if image and not in_modal else ""

    # Clicking the title opens the game's install modal; inside that modal the title must not link to itself
    if install_slug and not link and not in_modal:
        link = "#" + install_slug

    return <Card title={name} link={link} image_src={image_src} tags={techs} github={github}>{children}</Card>
