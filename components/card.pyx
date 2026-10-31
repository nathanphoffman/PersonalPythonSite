from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.utils import flatten_children


@component
def Card(title: str = "", link: str = "", image_src: str = "", tags=None, github: str = "", children=None) -> Any:
    """Shared card for projects and blog posts: optional image, linked title, tag pills, optional GitHub link and body text."""
    if link:
        title_el = (
            <a target="_blank" rel="noopener noreferrer" href={link} className="text-blue-600 hover:text-blue-800">
                {title}
            </a>
        )
    else:
        title_el = <span className="text-gray-900">{title}</span>

    img_el = None
    if image_src:
        img_el = <img src={image_src} alt={title} className="shadow-lg w-30 h-30 object-cover rounded mb-3" />

    tag_pills = [
        <span className="text-xs font-medium text-blue-600 bg-blue-50 px-2 py-0.5 rounded inline-block">{t}</span>
        for t in (tags or [])
    ]

    github_el = (
        <a target="_blank" rel="noopener noreferrer" href={github} className="text-sm text-blue-600 hover:text-blue-800 inline-block mb-2">
            View Source on GitHub
        </a>
    ) if github else None

    text_block = (
        <div>
            <h3 className="text-lg font-semibold mb-1">{title_el}</h3>
            <div className="flex flex-wrap gap-1.5 mb-2">{tag_pills}</div>
            {github_el}
        </div>
    )

    content = (
        <div className="flex gap-1">
            <div className="flex-1 min-w-0">{img_el}</div>
            <div className="flex-2 min-w-0">{text_block}</div>
        </div>
    ) if img_el else text_block

    return (
        <div className="border border-gray-200 rounded-lg p-5 bg-white hover:shadow-md transition-shadow">
            {content}
            <p className="text text-gray-600 mt-1">{flatten_children(children)}</p>
        </div>
    )
