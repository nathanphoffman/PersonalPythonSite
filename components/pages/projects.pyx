from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.project_catalog import (
    DeorLanguage,
    DeorPico,
    NewWebProject,
    SolarBit,
    FoodComparison,
    CodingAstronomerRefresh,
    ReactNativeTesting,
    TinyMightyCharSheet,
    WeatherSite,
    RpgFromScratch,
    BggScraper,
    TinyMightyRpg,
    BerksHomes,
    LuckyVitamin2022,
    LuckyVitamin2021,
    LuckyVitamin2020,
    VueCalendar,
    VexmenRobotics,
    JetSenseFacebook,
    IrrationalCalculator,
    FormsSystem,
    DeveloperAdminSite,
    CodingAstronomerOriginal,
    CentralizedWebService,
    OperationsChecklist,
    DmUpdate,
    LostWizard,
    PeriodicTable,
    RevenueManagementPricing,
    AccountingCheck,
    BpmSolution,
    ApolloGame,
    NightEmber,
    Webiota,
    PhotoGallery,
    RealEstateSite,
    MusicSite,
    BlueSkyEnvySite,
    GraphingTool,
)
from components.pages.project_grid import ProjectGrid
from components.pages.project_title import ProjectTitle

@component
def Projects() -> Any:
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

            <ProjectTitle>2026</ProjectTitle>
            <ProjectGrid>
                <DeorLanguage />
                <DeorPico />
                <NewWebProject />
                <SolarBit />
                <FoodComparison />
                <CodingAstronomerRefresh />
                <ReactNativeTesting />
                <TinyMightyCharSheet />
            </ProjectGrid>

            <ProjectTitle>2025</ProjectTitle>
            <ProjectGrid>
                <WeatherSite />
                <RpgFromScratch />
            </ProjectGrid>

            <ProjectTitle>2024</ProjectTitle>
            <ProjectGrid>
                <BggScraper />
                <TinyMightyRpg />
            </ProjectGrid>

            <ProjectTitle>2023</ProjectTitle>
            <ProjectGrid>
                <BerksHomes />
            </ProjectGrid>

            <ProjectTitle>2022</ProjectTitle>
            <ProjectGrid>
                <LuckyVitamin2022 />
            </ProjectGrid>

            <ProjectTitle>2021</ProjectTitle>
            <ProjectGrid>
                <LuckyVitamin2021 />
            </ProjectGrid>

            <ProjectTitle>2020</ProjectTitle>
            <ProjectGrid>
                <LuckyVitamin2020 />
                <VueCalendar />
            </ProjectGrid>

            <ProjectTitle>2019</ProjectTitle>
            <ProjectGrid>
                <VexmenRobotics />
                <JetSenseFacebook />
                <IrrationalCalculator />
            </ProjectGrid>

            <ProjectTitle>2018</ProjectTitle>
            <ProjectGrid>
                <FormsSystem />
                <DeveloperAdminSite />
            </ProjectGrid>

            <ProjectTitle>2017</ProjectTitle>
            <ProjectGrid>
                <CodingAstronomerOriginal />
                <CentralizedWebService />
                <OperationsChecklist />
            </ProjectGrid>

            <ProjectTitle>2016</ProjectTitle>
            <ProjectGrid>
                <DmUpdate />
                <LostWizard />
                <PeriodicTable />
                <RevenueManagementPricing />
            </ProjectGrid>

            <ProjectTitle>2015</ProjectTitle>
            <ProjectGrid>
                <AccountingCheck />
                <BpmSolution />
                <ApolloGame />
            </ProjectGrid>

            <ProjectTitle>2008-2014</ProjectTitle>
            <ProjectGrid>
                <NightEmber />
                <Webiota />
                <PhotoGallery />
            </ProjectGrid>

            <ProjectTitle>pre-2006 (High School)</ProjectTitle>
            <ProjectGrid>
                <RealEstateSite />
                <MusicSite />
                <BlueSkyEnvySite />
                <GraphingTool />
            </ProjectGrid>
        </div>
    )