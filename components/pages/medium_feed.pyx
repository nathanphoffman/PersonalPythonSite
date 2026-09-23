from reactpy import component, use_effect, use_state
from reactpy_jsx import jsx
from typing import Any

from components.medium import get_posts
from components.pages.children.post import Post


@component
def MediumFeed() -> Any:
    posts, set_posts = use_state([])
    loading, set_loading = use_state(True)

    @use_effect(dependencies=[])
    async def load() -> None:
        set_posts(await get_posts())
        set_loading(False)

    if posts:
        return (
            <div className="animate-fade-in">
                {[<Post key={p.link} title={p.title} body={p.snippet} link={p.link} date={p.date} /> for p in posts]}
            </div>
        )

    message = "Loading latest posts…" if loading else "Couldn't load posts right now."
    return (
        <div className="bg-gray-50 border border-gray-200 rounded-lg p-10 text-center text-gray-500">
            <p className="text-lg font-medium mb-2">Medium Feed</p>
            <p className="text-sm">{message}</p>
        </div>
    )
