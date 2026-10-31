from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.home.carousel.carousel import Carousel
from components.projects import SpaceGame3d, DeorLanguage, DeorPico, FoodComparison, NewWebProject, TinyMightyRpg, WeatherSite


@component
def HighlightedProjects() -> Any:
    return (
        <div>
            <h1 className="text-4xl font-bold text-gray-900 mb-6">Highlighted Projects</h1>
            <p className="text-gray-700 leading-relaxed mb-6">
                See a full list of <a href="/projects" className="text-blue-600 hover:text-blue-800 mx-1">all of my projects here</a>.
            </p>
            <Carousel carousel_id="highlighted-projects">
                <DeorLanguage />
                <SpaceGame3d />
                <DeorPico />
                <NewWebProject />
                <WeatherSite />
                <FoodComparison />
                <TinyMightyRpg />
            </Carousel>
        </div>
    )
