from reactpy import component
from reactpy_jsx import jsx
from typing import Any


@component
def Project(name: str = "", summary: str = "", tech: str = "", link: str = "", image: str = "") -> Any:
    if link:
        title_el = (
            <a target="_blank" rel="noopener noreferrer" href={link} className="text-blue-600 hover:text-blue-800">
                {name} &#8599;
            </a>
        )
    else:
        title_el = <span className="text-gray-900">{name}</span>

    img_el = None
    if image:
        img_el = <img src={"/static/img/" + image} alt={name} className="w-full h-32 object-cover rounded mb-3" />

    return (
        <div className="border border-gray-200 rounded-lg p-5 bg-white hover:shadow-md transition-shadow">
            {img_el}
            <h3 className="text-lg font-semibold mb-1">{title_el}</h3>
            <span className="text-xs font-medium text-blue-600 bg-blue-50 px-2 py-0.5 rounded inline-block mb-2">{tech}</span>
            <p className="text-sm text-gray-600 mt-1">{summary}</p>
        </div>
    )
