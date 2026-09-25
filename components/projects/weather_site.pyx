from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def WeatherSite() -> Any:
    return (
        <Project image="weather-site.png" link="https://weather.nathanhoffman.me" github="https://github.com/nathanphoffman/WeatherSite">
            <Title>Weather Site</Title>
            <Tech>React</Tech>
            <Tech>Bootstrap</Tech>
            For a while I had a console application I wrote by hand which scraped weather information from NOAA's web page and displayed it in a very readable format (all wind, rain, thunder, etc. was rolled into a 'Storm Factor'). I later pair-coded with claude to create a web version of the console app, and also rewrote the scraper to pull from NOAA's api.
        </Project>
    )