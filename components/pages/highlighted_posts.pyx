from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.general.card import Card
from components.general.carousel import Carousel
from components.highlighted_posts_data import HIGHLIGHTED_POSTS


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
