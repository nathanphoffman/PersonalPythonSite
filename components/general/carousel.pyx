from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.router import CarouselFade, ScrollButton

ARROW_CLASS = "absolute top-1/2 -translate-y-1/2 z-10 w-10 h-10 flex items-center justify-center rounded-full bg-white/90 border border-gray-200 shadow-md text-gray-600 text-xl hover:bg-white hover:text-gray-900 hover:shadow-lg transition-all animate-fade-in motion-reduce:animate-none"


@component
def Carousel(carousel_id: str = "carousel", children=None) -> Any:
    """Horizontally scrolling row of cards with left/right arrows. Also swipeable on touch screens.

    Cards are sized a bit narrower than the row, and the row bleeds into the page's side
    padding, so the edges of the previous/next cards peek in to show there's more to scroll.
    """
    slides = [
        <div key={i} className="snap-start shrink-0 w-[calc(100%-3rem)] md:w-[calc(50%-2.5rem)] *:h-full">{child}</div>
        for i, child in enumerate(children or [])
    ]
    return (
        <div className="relative mb-6">
            <CarouselFade targetId={carousel_id} />
            <ScrollButton targetId={carousel_id} direction={-1} label="Previous" className={ARROW_CLASS + " -left-5"}>‹</ScrollButton>
            <div id={carousel_id} className="flex gap-4 overflow-x-auto snap-x snap-mandatory no-scrollbar -mx-6 px-6 scroll-pl-10 md:scroll-pl-14">
                {slides}
            </div>
            <ScrollButton targetId={carousel_id} direction={1} label="Next" className={ARROW_CLASS + " -right-5"}>›</ScrollButton>
        </div>
    )
