from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.games import GUIDES
from components.projects.project import InsideModal  # type: ignore[import-not-found]

# A hash that matches no element: links to it close the modals without scrolling the page
CLOSE_HASH = "#close"


@component
def GameModal(slug: str = "", project=None, guide=None) -> Any:
    """Install guide overlay. It stays hidden until the address hash equals its id (CSS :target), so opening it never reloads the page."""
    return (
        <div id={slug} className="hidden target:flex fixed inset-0 z-[60] items-center justify-center bg-black/60 p-4">
            <a href={CLOSE_HASH} aria-label="Close" className="absolute inset-0 cursor-default"></a>
            <div className="relative bg-white rounded-lg shadow-xl w-full max-w-2xl max-h-[85vh] flex flex-col">
                <a href={CLOSE_HASH} aria-label="Close" className="absolute top-2 right-4 text-2xl leading-none text-gray-500 hover:text-gray-900">×</a>
                <div className="overflow-y-auto p-6">{InsideModal(project(), value=True)}{guide()}</div>
            </div>
        </div>
    )


@component
def GameModals() -> Any:
    return <div>{[<GameModal slug={slug} project={project} guide={guide} /> for slug, (project, guide) in GUIDES.items()]}</div>
