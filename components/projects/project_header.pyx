from reactpy import component
from reactpy_jsx import jsx
from typing import Any


@component
def ProjectHeader() -> Any:
    return (
        <div>
            <h1 className="text-4xl font-bold text-gray-900 mb-6">My Projects</h1>
            <p className="text-gray-700 leading-relaxed mb-8">
                Below you can find a list of my projects. If you are interested in finding out more about my
                professional career, please add me on

                <a target="_blank" rel="noopener noreferrer" className="mx-1 text-blue-600 hover:text-blue-800" href="https://www.linkedin.com/in/nathan-hoffman-a75994111/">LinkedIn.</a>

                If you want to see other more minor personal projects I have worked on, you can visit
                <a target="_blank" rel="noopener noreferrer" className="mx-1 text-blue-600 hover:text-blue-800" href="https://github.com/nathanphoffman">my Personal GitHub.</a>
            </p>
        </div>
    )
