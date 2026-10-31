from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.home.highlighted_blog_posts.highlighted_blog_posts import HighlightedBlogPosts
from components.home.highlighted_projects import HighlightedProjects
from components.home.info_banner import InfoBanner
from components.home.latest_blog_posts.latest_blog_posts import LatestBlogPosts


@component
def Home() -> Any:
    return (
        <div>
            <InfoBanner />
            <HighlightedProjects />
            <HighlightedBlogPosts />
            <LatestBlogPosts />
        </div>
    )
