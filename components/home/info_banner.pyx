from reactpy import component
from reactpy_jsx import jsx
from typing import Any


@component
def InfoBanner() -> Any:
    return (
        <div className="flex items-center justify-between bg-blue-100 text-blue-800 px-4 py-3 rounded border border-blue-300 -mt-8 mb-6">
            <p>This site was recently rewritten from an early version of React still on my GitHub to this form you see now I got rid of the Coding Astronomer domain.  
            It was done as an experiment to try to replicate a React-TS-JSX-like framework utilizing Python.  
            Since much of this site was based on original design work (which itself was based on another blog template I found online) 
            and this has since been reworked manually with some claude help to move it over, it is a hodge podge of sourcing but mostly of my own design.</p>
        </div>
    )
