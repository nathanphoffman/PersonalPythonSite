from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.medium_feed import MediumFeed
from components.pages.project_catalog import DeorLanguage, DeorPico, NewWebProject, WeatherSite
from components.pages.project_grid import ProjectGrid
from components.router import NavLink

BLOG_BUTTON_CLASS = "inline-block px-10 py-3 text-base font-medium text-gray-700 bg-gray-100 border border-gray-200 rounded-lg shadow-sm hover:bg-gray-50 hover:border-gray-300 hover:shadow-md hover:-translate-y-0.5 motion-reduce:hover:translate-y-0 transition-all duration-200"


@component
def Home(on_navigate=None) -> Any:
    return (
        <div>
            <div className="flex items-center justify-between bg-blue-100 text-blue-800 px-4 py-3 rounded border border-blue-300">
                <p>This site was recently rewritten from an early version of React still on my GitHub to this form you see now I got rid of the Coding Astronomer domain.  It was done as an experiment to try to replicate a React-TS-JSX-like framework utilizing Python.  Since much of this site was based on original design work (which itself was based on another blog template I found online) and this has since been reworked manually with some claude help to move it over, it is a hodge podge of sourcing but mostly of my own design.</p>
            </div>
            
            <h1></h1>
                        

    
            <h1 className="text-4xl font-bold text-gray-900 mb-6">Current Projects</h1>
            <p className="text-gray-700 leading-relaxed mb-8">
                Welcome! Below you would find my latest posts on Medium. You can see my
                <NavLink href="/projects" onNavigate={on_navigate} className="text-blue-600 hover:text-blue-800 mx-1">projects here</NavLink>
                and access the about page at the links above.
            </p>
            <h1 className="text-4xl font-bold text-gray-900 mb-6">Highlighted Projects</h1>
            <ProjectGrid>
                <DeorLanguage />
                <DeorPico />
                <NewWebProject />
                <WeatherSite />
            </ProjectGrid>
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