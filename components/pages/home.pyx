from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.medium_feed import MediumFeed
from components.projects import DeorLanguage, DeorPico, FoodComparison, NewWebProject, TinyMightyRpg, WeatherSite
from components.general.carousel import Carousel

BLOG_BUTTON_CLASS = "inline-block px-10 py-3 text-base font-medium text-gray-700 bg-gray-100 border border-gray-200 rounded-lg shadow-sm hover:bg-gray-50 hover:border-gray-300 hover:shadow-md hover:-translate-y-0.5 motion-reduce:hover:translate-y-0 transition-all duration-200"


@component
def Home() -> Any:
    return (
        <div>
            <div className="flex items-center justify-between bg-blue-100 text-blue-800 px-4 py-3 rounded border border-blue-300 -mt-8 mb-6">
                <p>This site was recently rewritten from an early version of React still on my GitHub to this form you see now I got rid of the Coding Astronomer domain.  It was done as an experiment to try to replicate a React-TS-JSX-like framework utilizing Python.  Since much of this site was based on original design work (which itself was based on another blog template I found online) and this has since been reworked manually with some claude help to move it over, it is a hodge podge of sourcing but mostly of my own design.</p>
            </div>
            
            <h1></h1>
                        

    
            <h1 className="text-4xl font-bold text-gray-900 mb-6">Highlighted Projects</h1>
            <p className="text-gray-700 leading-relaxed mb-6">
                See a full list of <a href="/projects" className="text-blue-600 hover:text-blue-800 mx-1">all of my projects here</a>.
            </p>
            <Carousel carousel_id="highlighted-projects">
                <DeorLanguage />
                <DeorPico />
                <NewWebProject />
                <WeatherSite />
                <FoodComparison />
                <TinyMightyRpg />
            </Carousel>
            <h1 className="text-4xl font-bold text-gray-900 mb-4">Latest Blog Posts</h1>
            <div className="flex flex-wrap gap-4 mb-8">
                <a href="https://medium.com/@nathanphoffman" target="_blank" rel="noopener noreferrer" className={BLOG_BUTTON_CLASS}>Medium Blog</a>
                <a href="https://nathanhoffman.me" target="_blank" rel="noopener noreferrer" className={BLOG_BUTTON_CLASS}>Personal Blog Site</a>
            </div>
            <MediumFeed />
            <a href="https://medium.com/@nathanphoffman" target="_blank" rel="noopener noreferrer" className="inline-block mt-6 text-blue-600 hover:text-blue-800 font-medium">
                More Posts on Medium
            </a>
        </div>
    )