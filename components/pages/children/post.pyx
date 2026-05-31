from reactpy import component
from reactpy_jsx import jsx
from typing import Any


@component
def Post(title: str = "", body: str = "", link: str = "", date: str = "") -> Any:
    return (
        <div className="border-b border-gray-200 pb-8 mb-8">
            <a target="_blank" rel="noopener noreferrer" href={link}>
                <h3 className="text-2xl font-semibold text-gray-900 hover:text-blue-600 mb-1">{title}</h3>
            </a>
            <div className="text-sm text-gray-500 mb-3">Posted on Medium: {date}</div>
            <div className="text-gray-700 leading-relaxed">{body}</div>
            <a href={link} target="_blank" rel="noopener noreferrer" className="inline-block mt-3 text-blue-600 hover:text-blue-800 text-sm font-medium">
                View Full Post &rarr;
            </a>
        </div>
    )
