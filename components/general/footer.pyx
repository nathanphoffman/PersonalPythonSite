from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.general.lg_icon import LgIcon  # type: ignore[import-not-found]


@component
def Footer() -> Any:
    return (
        <footer className="bg-gray-900 text-gray-400 text-center py-12 mt-16">
            <div className="max-w-5xl mx-auto px-4">
                <ul className="flex justify-center space-x-2 list-none p-0 mb-6 flex-wrap gap-y-2">
                    <li><LgIcon link_target="_blank" address="https://medium.com/@nathanphoffman" icon="medium" /></li>
                    <li><LgIcon link_target="_blank" address="https://twitter.com/nathanphoffman" icon="twitter" /></li>
                    <li><LgIcon link_target="_blank" address="https://github.com/nathanphoffman" icon="github" /></li>
                    <li><LgIcon link_target="_blank" address="http://stackoverflow.com/users/4266442/nate" icon="stack-overflow" /></li>
                    <li><LgIcon link_target="_blank" address="https://www.linkedin.com/in/nathan-hoffman-a75994111/" icon="linkedin" /></li>
                </ul>
                <p className="text-sm">
                    All original content by Nathan P Hoffman,
                    <a target="_blank" rel="noopener noreferrer" href="https://creativecommons.org/licenses/by-sa/2.0/" className="ml-1 hover:text-white underline">CC-BY-SA 2.0</a>
                </p>
            </div>
        </footer>
    )
