from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.home.latest_blog_posts.medium_feed import MediumFeed


@component
def LatestBlogPosts() -> Any:
    return (
        <div>
            <h1 className="text-4xl font-bold text-gray-900 mb-4">Latest Blog Posts</h1>
            <MediumFeed />
            <a href="https://medium.com/@nathanphoffman" target="_blank" rel="noopener noreferrer" className="inline-block mt-6 text-blue-600 hover:text-blue-800 font-medium">
                More Posts on Medium
            </a>
        </div>
    )
