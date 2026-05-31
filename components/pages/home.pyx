from reactpy import component
from reactpy_jsx import jsx
from typing import Any


@component
def Home() -> Any:
    return (
        <div>
            <div className="flex items-center justify-between bg-blue-100 text-blue-800 px-4 py-3 rounded border border-blue-300">
                <p>This site was recently rewritten from an early version of React still on my GitHub to this form you see now I got rid of the Coding Astronomer domain.  It was done as an experiment to try to replicate a React-TS-JSX-like framework utilizing Python.  Since much of this site was based on original design work (which itself was based on another blog template I found online) and this has since been reworked manually with some claude help to move it over, it is a hodge podge of sourcing but mostly of my own design.</p>
            </div>
            

            <h1 className="text-4xl font-bold text-gray-900 mb-6">Welcome</h1>
            <p className="text-gray-700 leading-relaxed mb-8">
                Welcome! Below you would find my latest posts on Medium. You can see my
                <a className="text-blue-600 hover:text-blue-800 mx-1" href="/projects">projects here</a>
                and access the about page at the links above.
            </p>
            <div className="bg-gray-50 border border-gray-200 rounded-lg p-10 text-center text-gray-500">
                <p className="text-lg font-medium mb-2">Medium Feed</p>
                <p className="text-sm">
                    Latest posts from
                    <a href="https://medium.com/@nathanphoffman" target="_blank" rel="noopener noreferrer" className="ml-1 text-blue-600 hover:text-blue-800">medium.com/@nathanphoffman</a>
                </p>
            </div>
            <a href="https://medium.com/@nathanphoffman" target="_blank" rel="noopener noreferrer" className="inline-block mt-6 text-blue-600 hover:text-blue-800 font-medium">
                More Posts on Medium &rarr;
            </a>
        </div>
    )
