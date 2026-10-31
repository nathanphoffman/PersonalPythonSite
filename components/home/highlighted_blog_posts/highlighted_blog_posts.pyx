from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.home.highlighted_blog_posts.highlighted_posts.highlighted_posts import HighlightedPosts

BLOG_BUTTON_CLASS = "inline-block px-10 py-3 text-base font-medium text-gray-700 bg-gray-100 border border-gray-200 rounded-lg shadow-sm hover:bg-gray-50 hover:border-gray-300 hover:shadow-md hover:-translate-y-0.5 motion-reduce:hover:translate-y-0 transition-all duration-200"


@component
def HighlightedBlogPosts() -> Any:
    return (
        <div>
            <h1 className="text-4xl font-bold text-gray-900 mb-4">Highlighted Blog Posts</h1>
            <div className="flex flex-wrap gap-4 mb-8">
                <a href="https://medium.com/@nathanphoffman" target="_blank" rel="noopener noreferrer" className={BLOG_BUTTON_CLASS}>Medium Blog</a>
                <a href="https://nathanhoffman.me" target="_blank" rel="noopener noreferrer" className={BLOG_BUTTON_CLASS}>Personal Blog Site</a>
            </div>
            <HighlightedPosts />
        </div>
    )
