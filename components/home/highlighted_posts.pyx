from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.card import Card
from components.home.carousel import Carousel
from components.home.highlighted_posts_data import HIGHLIGHTED_POSTS


@component
def HighlightedPosts() -> Any:
    return (
        <Carousel carousel_id="highlighted-posts">
            {[
                <Card
                    key={post.link}
                    title={post.title}
                    link={post.link}
                    image_src={"/static/img/" + post.image if post.image else ""}
                    tags={[post.date] if post.date else []}
                >
                    <span className="line-clamp-6">{post.snippet}</span>
                </Card>
                for post in HIGHLIGHTED_POSTS
            ]}
        </Carousel>
    )
