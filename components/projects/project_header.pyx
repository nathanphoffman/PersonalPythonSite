from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.links import ExternalLink


@component
def ProjectHeader() -> Any:
    return (
        <div>
            <h1 className="text-4xl font-bold text-gray-900 mb-6">My Projects</h1>
            <p className="text-gray-700 leading-relaxed mb-8">
                Below you can find a list of my projects. If you are interested in finding out more about my
                professional career, please add me on

                <ExternalLink href="https://www.linkedin.com/in/nathan-hoffman-a75994111/" extra_style="mx-1">LinkedIn.</ExternalLink>

                If you want to see other more minor personal projects I have worked on, you can visit
                <ExternalLink href="https://github.com/nathanphoffman" extra_style="mx-1">my Personal GitHub.</ExternalLink>
            </p>
        </div>
    )
