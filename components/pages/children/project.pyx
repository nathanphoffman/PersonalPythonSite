from reactpy import component
from reactpy_jsx import jsx
from typing import Any
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
def Project(link: str = "", image: str = "", children=None) -> Any:
    children = children or []
    names, children = _take_slot(children, "title")
    name = names[0] if names else ""
    techs, children = _take_slot(children, "tech")

    if link:
        title_el = (
            <a target="_blank" rel="noopener noreferrer" href={link} className="text-blue-600 hover:text-blue-800">
                {name}
            </a>
        )
    else:
        title_el = <span className="text-gray-900">{name}</span>

    img_el = None
    if image:
        img_el = <img src={"/static/img/" + image} alt={name} className="shadow-lg w-30 h-30 object-cover rounded mb-3" />

    tech_pills = [
        <span className="text-xs font-medium text-blue-600 bg-blue-50 px-2 py-0.5 rounded inline-block">{t}</span>
        for t in techs
    ]

    return (
        <div className="border border-gray-200 rounded-lg p-5 bg-white hover:shadow-md transition-shadow">

            <div className="flex gap-1"> 
                <div className="flex-1 min-w-0">{img_el}</div>
                <div className="flex-2 min-w-0">
                    <div>
                    <h3 className="text-lg font-semibold mb-1">{title_el}</h3>
                    <div className="flex flex-wrap gap-1.5 mb-2">{tech_pills}</div>
                    </div>
                </div>
            </div>
            <p className="text-sm text-gray-600 mt-1">{children}</p>
        </div>
    )