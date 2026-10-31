from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects.project_header import ProjectHeader
from components.projects.years.year_2026 import Year2026
from components.projects.years.year_2025 import Year2025
from components.projects.years.year_2024 import Year2024
from components.projects.years.year_2023 import Year2023
from components.projects.years.year_2021_2022 import Year20212022
from components.projects.years.year_2020 import Year2020
from components.projects.years.year_2019 import Year2019
from components.projects.years.year_2018 import Year2018
from components.projects.years.year_2017 import Year2017
from components.projects.years.year_2016 import Year2016
from components.projects.years.year_2015 import Year2015
from components.projects.years.year_2007_2014 import Year20072014
from components.projects.years.year_pre_2006 import YearPre2006


@component
def Projects() -> Any:
    return (
        <div>
            <ProjectHeader />
            <Year2026 />
            <Year2025 />
            <Year2024 />
            <Year2023 />
            <Year20212022 />
            <Year2020 />
            <Year2019 />
            <Year2018 />
            <Year2017 />
            <Year2016 />
            <Year2015 />
            <Year20072014 />
            <YearPre2006 />
        </div>
    )
