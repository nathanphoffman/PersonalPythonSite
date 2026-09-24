from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def WeatherSite() -> Any:
    return (
        <Project image="weather-site.png" link="https://weather.nathanhoffman.me">
            <Title>Weather Site</Title>
            <Tech>React</Tech>
            <Tech>Bootstrap</Tech>
            A Weather Site that simplifies weather to just a handful of metrics
        </Project>
    )