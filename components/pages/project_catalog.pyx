from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def DeorLanguage() -> Any:
    return (
        <Project image="deor.png" link="https://deor.dev" github="https://github.com/nathanphoffman/DeorLang">
            <Title>Deor Programming Language</Title>
            <Tech>Deor</Tech>
            <Tech>Rust</Tech>
            <Tech>Tailwind</Tech>
            <Tech>TS/JS</Tech>
            A programming language that transpiles to rust, features a small from scratch vanilla js landing page, and a large transpiler, along with a demo Pi generator and a new-web
            <a class="underline ml-1" target="_new" href="https://spec.deor.dev">spec</a>.
        </Project>
    )


@component
def DeorPico() -> Any:
    return (
        <Project image="newweb.png" link="https://newwebproject.org">
            <Title>Deor Pico (DPico)</Title>
            <Tech>Deor</Tech>
            <Tech>Rust</Tech>
            <Tech>HTML</Tech>
            <Tech>Tailwind</Tech>
            <Tech>TS</Tech>
            Outside of Deor's own transpiler this is the first decent sized product to be created with Deor. It is a terminal editor, which supports GIT, file browsing, mouse/keyboard controls, clipboard, etc.  Also currently adding spreadsheet support.
        </Project>
    )


@component
def NewWebProject() -> Any:
    return (
        <Project image="newweb.png" link="https://newwebproject.org">
            <Title>The New Web Project</Title>
            <Tech>WASM</Tech>
            <Tech>TS/JS</Tech>
            <Tech>Go</Tech>
            <Tech>CSS</Tech>
            <Tech>Electron</Tech>
            The New Web Project was the result of asking myself "what would the web look 1995 if we had the tools of 2026." The response was this growing project: 
            a markdown-driven web platform complete with wasm integration for scripting and forms, along with an electron browser.
        </Project>
    )


@component
def SolarBit() -> Any:
    return (
        <Project>
            <Title>Solar Bit</Title>
            <Tech>C#</Tech>
            <Tech>Go</Tech>
            An attempt to create a web deployment platform (like Railway), still highly experimental and not yet published, likely going to become an open source project.
        </Project>
    )


@component
def FoodComparison() -> Any:
    return (
        <Project image="codingastronomer.png" link="">
            <Title>Food Comparison</Title>
            <Tech>TS/JS</Tech>
            <Tech>Rust</Tech>
            A Tool for comparing foods
        </Project>
    )


@component
def CodingAstronomerRefresh() -> Any:
    return (
        <Project image="codingastronomer.png" link="https://codingastronomer.dev">
            <Title>Coding Astronomer (Refresh)</Title>
            <Tech>Python</Tech>
            <Tech>ReactPy</Tech>
            <Tech>Tailwind</Tech>
            Migrated an old reactjs project that I had manually created in the past to ReactPy and Pyx using some help from Claude.
        </Project>
    )


@component
def ReactNativeTesting() -> Any:
    return (
        <Project image="codingastronomer.png" link="">
            <Title>React Native Testing</Title>
            <Tech>React</Tech>
            <Tech>Bootstrap</Tech>
            A Tool for comparing foods
        </Project>
    )


@component
def TinyMightyCharSheet() -> Any:
    return (
        <Project image="codingastronomer.png" link="">
            <Title>Tiny Mighty (Char Sheet)</Title>
            <Tech>Next</Tech>
            <Tech>C#</Tech>
            This is an addition to the tiny mighty website, done with C# and Next, this is a work in progress.
        </Project>
    )


@component
def WeatherSite() -> Any:
    return (
        <Project image="codingastronomer.png" link="https://weather.nathanhoffman.me">
            <Title>Weather Site</Title>
            <Tech>React</Tech>
            <Tech>Bootstrap</Tech>
            A Weather Site that simplifies weather to just a handful of metrics
        </Project>
    )


@component
def RpgFromScratch() -> Any:
    return (
        <Project image="codingastronomer.png" link="">
            <Title>RPG From Scratch</Title>
            <Tech>React</Tech>
            <Tech>Bootstrap</Tech>
            I started working on a small CRPG from scratch using vanilla JS and TS to render a basic 2d game. It uses a custom canvas engine to render the layers of the game and uses 0 AI to have something completely my own.
            </Project>
    )


@component
def BggScraper() -> Any:
    return (
        <Project image="codingastronomer.png" link="">
            <Title>BGG Scraper</Title>
            <Tech>React</Tech>
            <Tech>Bootstrap</Tech>
            Worked on a Board Game Scraper
        </Project>
    )


@component
def TinyMightyRpg() -> Any:
    return (
        <Project image="codingastronomer.png" link="">
            <Title>Tiny Mighty RPG</Title>
            <Tech>React</Tech>
            <Tech>Bootstrap</Tech>
            Worked on a Board Game Scraper
        </Project>
    )


@component
def BerksHomes() -> Any:
    return (
        <Project image="berks.png" link="">
            <Title>Berks Homes</Title>
            <Tech>React</Tech>
            <Tech>Bootstrap</Tech>
            Worked on Berks Homes's internal home modeling, design, and planning website, an internal tool used by employees.
        </Project>
    )


@component
def LuckyVitamin2022() -> Any:
    return (
        <Project image="codingastronomer.png" link="">
            <Title>Lucky Vitamin</Title>
            <Tech>React</Tech>
            <Tech>Bootstrap</Tech>
            Worked for Luckyvitamin
        </Project>
    )


@component
def LuckyVitamin2021() -> Any:
    return (
        <Project image="codingastronomer.png" link="">
            <Title>Lucky Vitamin</Title>
            <Tech>React</Tech>
            <Tech>Bootstrap</Tech>
            Worked for Luckyvitamin
        </Project>
    )


@component
def LuckyVitamin2020() -> Any:
    return (
        <Project image="codingastronomer.png" link="">
            <Title>Lucky Vitamin</Title>
            <Tech>React</Tech>
            <Tech>Bootstrap</Tech>
            Worked for Luckyvitamin
        </Project>
    )


@component
def VueCalendar() -> Any:
    return (
        <Project image="" link="">
            <Title>Vue Calendar</Title>
            <Tech>Node</Tech>
            <Tech>Mongo</Tech>
            <Tech>Vue</Tech>
            <Tech>CSS</Tech>
            Creating a calendar with Node, MongoDB, Vue and pure-CSS.
        </Project>
    )


@component
def VexmenRobotics() -> Any:
    return (
        <Project image="vexmen.png" link="http://order.vexmen.com/#!/order">
            <Title>Vexmen Robotics Website</Title>
            <Tech>(Professional) MithrilJS</Tech>
            <Tech>NodeJS</Tech>
            <Tech>Webscraper</Tech>
            Created a website for a local Brandywine robotics organization and their school kids.
        </Project>
    )


@component
def JetSenseFacebook() -> Any:
    return (
        <Project image="facebook.png" link="">
            <Title>JetSense.AI Facebook Integration</Title>
            <Tech>(Professional) C# .NET Core 2.2</Tech>
            <Tech>AWS DynamoDB</Tech>
            <Tech>FB Graph API</Tech>
            <Tech>FB Messenger.</Tech>
            Setup an integration between Facebook and JetSense's chatbot services.
        </Project>
    )


@component
def IrrationalCalculator() -> Any:
    return (
        <Project image="console.png" link="https://github.com/nathanphoffman/IrrationalCalculator">
            <Title>Irrational Calculator</Title>
            <Tech>C# .NET Core 2.2</Tech>
            Created a console application on 24 hour notice as a sample of my work,
            calculates irrational numbers.
        </Project>
    )


@component
def FormsSystem() -> Any:
    return (
        <Project image="forms.png" link="">
            <Title>Forms System (BPM/Workflows)</Title>
            <Tech>(Professional) VueJS</Tech>
            <Tech>Web Api</Tech>
            <Tech>Azure Service Bus</Tech>
            <Tech>SQL</Tech>
            <Tech>and MongoDB Storage</Tech>
            Created a BPM solution; it was a 3 year project, completed in 2018
            and touched almost every department.
        </Project>
    )


@component
def DeveloperAdminSite() -> Any:
    return (
        <Project link="">
            <Title>Developer Admin Site</Title>
            <Tech>(Professional) C# .Net Core 2.0</Tech>
            <Tech>ReactJS</Tech>
            <Tech>Gulp</Tech>
            <Tech>Webpack</Tech>
            Created a simple administration site where we could monitor the run
            of several of our back-end services.
        </Project>
    )


@component
def CodingAstronomerOriginal() -> Any:
    return (
        <Project image="codingastronomer.png" link="">
            <Title>Coding Astronomer (This Site)</Title>
            <Tech>ReactJS</Tech>
            <Tech>Bootstrap</Tech>
            <Tech>CleanBlog Template</Tech>
            A personal site (this site) to allow people who followed me on my
            Wordpress blog to find me.
        </Project>
    )


@component
def CentralizedWebService() -> Any:
    return (
        <Project link="">
            <Title>A Centralized Web Service</Title>
            <Tech>(Professional) C# Web Api</Tech>
            <Tech>OAuth</Tech>
            <Tech>Owin</Tech>
            <Tech>NodeJS</Tech>
            <Tech>ExpressJS</Tech>
            <Tech>MongoDB</Tech>
            A web service designed to integrate several of our existing systems
            and redirect them to multiple point-of-sales during a point-of-sale transition.
        </Project>
    )


@component
def OperationsChecklist() -> Any:
    return (
        <Project link="" image="efc.PNG">
            <Title>Operations Checklist Website</Title>
            <Tech>(Professional) JQuery</Tech>
            <Tech>C# MVC</Tech>
            <Tech>SQL</Tech>
            <Tech>Azure Services</Tech>
            <Tech>Azure ServiceBus</Tech>
            <Tech>Azure AD</Tech>
            <Tech>ADAL.JS</Tech>
            A website which turned an Operations checklist digital and
            streamlined the foreclosure process.
        </Project>
    )


@component
def DmUpdate() -> Any:
    return (
        <Project image="dmupdate.png" link="">
            <Title>Operations Reporting Website (DM Update)</Title>
            <Tech>(Professional) ReactJS</Tech>
            <Tech>C# Web API</Tech>
            <Tech>Linq</Tech>
            <Tech>Azure Services</Tech>
            <Tech>Azure ServiceBus</Tech>
            <Tech>Azure AD</Tech>
            <Tech>Bootstrap</Tech>
            My first professional use of ReactJS, and build tools like Gulp, Webpack, etc.
        </Project>
    )


@component
def LostWizard() -> Any:
    return (
        <Project image="lostwizard.png" link="/examples/lostwizard/index.html">
            <Title>Lost Wizard</Title>
            <Tech>JavaScript</Tech>
            <Tech>PhaserJS</Tech>
            I created a framework for PhaserJS which could parse files from the
            Tiled Map Editor, and used configuration files to create a game.
        </Project>
    )


@component
def PeriodicTable() -> Any:
    return (
        <Project image="periodictable.png" link="/examples/periodictable/index.html">
            <Title>Periodic Table</Title>
            <Tech>ReactJS</Tech>
            A ReactJS experiment to try and render a responsive table manually:
            it renders in three different forms.
        </Project>
    )


@component
def RevenueManagementPricing() -> Any:
    return (
        <Project image="arc.png" link="">
            <Title>Revenue Management Pricing Website</Title>
            <Tech>(Professional) JQuery</Tech>
            <Tech>C# MVC</Tech>
            <Tech>Datatables</Tech>
            Extremely complex multiple-table, multiple-screen auto-updating interface.
        </Project>
    )


@component
def AccountingCheck() -> Any:
    return (
        <Project image="path.png" link="">
            <Title>Accounting Check Website</Title>
            <Tech>(Professional) JQuery</Tech>
            <Tech>C# MVC</Tech>
            <Tech>SQL</Tech>
            An application for tracking and managing company checks.
        </Project>
    )


@component
def BpmSolution() -> Any:
    return (
        <Project image="workflows.png" link="">
            <Title>BPM Solution</Title>
            <Tech>(Professional) JQuery</Tech>
            <Tech>PHP</Tech>
            <Tech>MySQL</Tech>
            <Tech>ProcessMaker BPM</Tech>
            <Tech>C# Console Applications</Tech>
            My first professional coding project, I brought our BPM process
            inhouse to an open source solution.
        </Project>
    )


@component
def ApolloGame() -> Any:
    return (
        <Project link="">
            <Title>Apollo Game</Title>
            <Tech>JavaScript</Tech>
            <Tech>PhaserJS</Tech>
            My first experiment with PhaserJS, themed as the Apollo Moon landings.
        </Project>
    )


@component
def NightEmber() -> Any:
    return (
        <Project image="nightember.png" link="/examples/nightember/index.html">
            <Title>Night Ember</Title>
            <Tech>JQuery</Tech>
            <Tech>My Own CSS/Design</Tech>
            A simple unit conversion app for astronomical units.
        </Project>
    )


@component
def Webiota() -> Any:
    return (
        <Project image="webiota.png" link="">
            <Title>Webiota</Title>
            <Tech>JQuery</Tech>
            <Tech>PHP</Tech>
            <Tech>JavaScript</Tech>
            An astronomy site, which led me to landing my first professional job
            in development. The domain lapsed, screenshots from the wayback machine.
        </Project>
    )


@component
def PhotoGallery() -> Any:
    return (
        <Project image="gallery.png" link="/examples/photogallery/index.html">
            <Title>Photo Gallery</Title>
            <Tech>JQuery</Tech>
            <Tech>PHP</Tech>
            <Tech>JavaScript</Tech>
            A simple site using a photo gallery library to show off some of my photos.
        </Project>
    )


@component
def RealEstateSite() -> Any:
    return (
        <Project link="">
            <Title>Real-Estate Site</Title>
            <Tech>Plain HTML</Tech>
            <Tech>My Own CSS/Design</Tech>
            A simple website for a small real-estate company for a friend's dad,
            no longer available online.
        </Project>
    )


@component
def MusicSite() -> Any:
    return (
        <Project link="">
            <Title>Music Site</Title>
            <Tech>Plain HTML</Tech>
            <Tech>JavaScript</Tech>
            <Tech>some Flash</Tech>
            <Tech>My Own CSS/Design</Tech>
            A simple website for a friend's dad's band, no longer available online.
        </Project>
    )


@component
def BlueSkyEnvySite() -> Any:
    return (
        <Project link="">
            <Title>Blue Sky Envy Site</Title>
            <Tech>Plain HTML My Own CSS/Design</Tech>
            A simple website for a local band, no longer available.
        </Project>
    )


@component
def GraphingTool() -> Any:
    return (
        <Project link="">
            <Title>Graphing Tool</Title>
            <Tech>C++</Tech>
            A simple console application in C++ for outputting x,y plot files.
        </Project>
    )
