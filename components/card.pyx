from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.links import ExternalLink, InternalLink
from components.utils import flatten_children


@component
def Card(title: str = "", link: str = "", image_src: str = "", tags=None, github: str = "", children=None) -> Any:
    """Shared card for projects and blog posts: optional image, linked title, tag pills, optional GitHub link and body text."""
    if link:
        # "#something" opens a modal on this same page, so it must not open a new tab
        title_el = <InternalLink href={link}>{title}</InternalLink> if link.startswith("#") else <ExternalLink href={link}>{title}</ExternalLink>
    else:
        title_el = <span className="text-gray-900">{title}</span>

    img_el = None
    if image_src:
        img_el = <img src={image_src} alt={title} className="shadow-lg w-24 h-24 sm:w-30 sm:h-30 object-cover rounded mb-3" />

    tag_pills = [
        <span className="text-xs font-medium text-blue-600 bg-blue-50 px-2 py-0.5 rounded inline-block">{t}</span>
        for t in (tags or [])
    ]

    github_el = (
        <ExternalLink href={github} extra_style="text-sm inline-block mb-2">View Source on GitHub</ExternalLink>
    ) if github else None

    text_block = (
        <div>
            <h3 className="text-lg font-semibold mb-1">{title_el}</h3>
            <div className="flex flex-wrap gap-1.5 mb-2">{tag_pills}</div>
            {github_el}
        </div>
    )

    content = (
        <div className="flex gap-5 sm:gap-1">
            <div className="flex-1 min-w-0">{img_el}</div>
            <div className="flex-2 min-w-0">{text_block}</div>
        </div>
    ) if img_el else text_block

    return (
        <div className="border border-gray-200 rounded-lg p-6 sm:p-5 bg-white hover:shadow-md transition-shadow">
            {content}
            <p className="text text-gray-600 mt-1">{flatten_children(children)}</p>
        </div>
    )
