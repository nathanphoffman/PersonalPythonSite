from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]
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
                <Project image="deor.png" link="https://deor.dev">
                    <Title>Deor Programming Language</Title>
                    <Tech>Deor</Tech>
                    <Tech>Rust</Tech>
                    <Tech>Tailwind</Tech>
                    <Tech>TS/JS</Tech>
                    A programming language that transpiles to rust, features a small from scratch vanilla js landing page, and a large transpiler, along with a demo Pi generator and a new-web
                    <a class="underline ml-1" target="_new" href="https://spec.deor.dev">spec</a>.
                </Project>
                <Project image="codingastronomer.png" link="https://newwebproject.org">
                    <Title>The New Web Project</Title>
                    <Tech>WASM</Tech>
                    <Tech>TS/JS</Tech>
                    <Tech>Go</Tech>
                    <Tech>CSS</Tech>
                    <Tech>Electron</Tech>
                    The New Web Project was the result of asking myself in the shower "what would the web look 1995 if we had the tools of 2026." The response was this growing project: 
                    a markdown-driven web platform complete with wasm integration for scripting, forms, along with an electron browser.
                </Project>
                <Project image="codingastronomer.png" link="">
                    <Title>Solar Bit</Title>
                    <Tech>C#</Tech>
                    <Tech>Go</Tech>
                    An attempt to create a web deployment platform (like Railway), still highly experimental and not yet published, likely going to become an open source project.
                </Project>
                <Project image="codingastronomer.png" link="">
                    <Title>Food Comparison</Title>
                    <Tech>TS/JS</Tech>
                    <Tech>Rust</Tech>
                    A Tool for comparing foods
                </Project>
                <Project image="codingastronomer.png" link="https://codingastronomer.dev">
                    <Title>Coding Astronomer (Refresh)</Title>
                    <Tech>Python</Tech>
                    <Tech>ReactPy</Tech>
                    <Tech>Tailwind</Tech>
                    Migrated an old reactjs project that I had manually created in the past to ReactPy and Pyx using some help from Claude.
                </Project>
                <Project image="codingastronomer.png" link="">
                    <Title>React Native Testing</Title>
                    <Tech>React</Tech>
                    <Tech>Bootstrap</Tech>
                    A Tool for comparing foods
                </Project>
            </ProjectGrid>

            <ProjectTitle>2025</ProjectTitle>
            <ProjectGrid>
                <Project image="codingastronomer.png" link="https://weather.nathanhoffman.me">
                    <Title>Weather Site</Title>
                    <Tech>React</Tech>
                    <Tech>Bootstrap</Tech>
                    A Weather Site that simplifies weather to just a handful of metrics
                </Project>
                <Project image="codingastronomer.png" link="">
                    <Title>RPG From Scratch</Title>
                    <Tech>React</Tech>
                    <Tech>Bootstrap</Tech>
                    I started working on a small CRPG from scratch using vanilla JS and TS to render a basic 2d game. It uses a custom canvas engine to render the layers of the game and uses 0 AI to have something completely my own.
                    </Project>
            </ProjectGrid>

            <ProjectTitle>2024</ProjectTitle>
            <ProjectGrid>
                <Project image="codingastronomer.png" link="">
                    <Title>BGG Scraper</Title>
                    <Tech>React</Tech>
                    <Tech>Bootstrap</Tech>
                    Worked on a Board Game Scraper
                </Project>
                <Project image="codingastronomer.png" link="">
                    <Title>Tiny Mighty RPG</Title>
                    <Tech>React</Tech>
                    <Tech>Bootstrap</Tech>
                    Worked on a Board Game Scraper
                </Project>
            </ProjectGrid>

            <ProjectTitle>2023</ProjectTitle>
            <ProjectGrid>
                <Project image="berks.png" link="">
                    <Title>Berks Homes</Title>
                    <Tech>React</Tech>
                    <Tech>Bootstrap</Tech>
                    Worked on Berks Homes's internal home modeling, design, and planning website, an internal tool used by employees.
                </Project>
            </ProjectGrid>

            <ProjectTitle>2022</ProjectTitle>
            <ProjectGrid>
                <Project image="codingastronomer.png" link="">
                    <Title>Lucky Vitamin</Title>
                    <Tech>React</Tech>
                    <Tech>Bootstrap</Tech>
                    Worked for Luckyvitamin
                </Project>
            </ProjectGrid>

            <ProjectTitle>2021</ProjectTitle>
            <ProjectGrid>
                <Project image="codingastronomer.png" link="">
                    <Title>Lucky Vitamin</Title>
                    <Tech>React</Tech>
                    <Tech>Bootstrap</Tech>
                    Worked for Luckyvitamin
                </Project>
            </ProjectGrid>

            <ProjectTitle>2020</ProjectTitle>
            <ProjectGrid>
                <Project image="codingastronomer.png" link="">
                    <Title>Lucky Vitamin</Title>
                    <Tech>React</Tech>
                    <Tech>Bootstrap</Tech>
                    Worked for Luckyvitamin
                </Project>
                <Project image="" link="">
                    <Title>Vue Calendar</Title>
                    <Tech>Node</Tech>
                    <Tech>Mongo</Tech>
                    <Tech>Vue</Tech>
                    <Tech>CSS</Tech>
                    Creating a calendar with Node, MongoDB, Vue and pure-CSS.
                </Project>
            </ProjectGrid>

            <h2 className="text-2xl font-semibold text-gray-700 mt-10 mb-4 border-b border-gray-200 pb-2">2019</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
                <Project image="vexmen.png" link="http://order.vexmen.com/#!/order">
                    <Title>Vexmen Robotics Website</Title>
                    <Tech>(Professional) MithrilJS</Tech>
                    <Tech>NodeJS</Tech>
                    <Tech>Webscraper</Tech>
                    Created a website for a local Brandywine robotics organization and their school kids.
                </Project>
                <Project image="facebook.png" link="">
                    <Title>JetSense.AI Facebook Integration</Title>
                    <Tech>(Professional) C# .NET Core 2.2</Tech>
                    <Tech>AWS DynamoDB</Tech>
                    <Tech>FB Graph API</Tech>
                    <Tech>FB Messenger.</Tech>
                    Setup an integration between Facebook and JetSense's chatbot services.
                </Project>
                <Project image="console.png" link="https://github.com/nathanphoffman/IrrationalCalculator">
                    <Title>Irrational Calculator</Title>
                    <Tech>C# .NET Core 2.2</Tech>
                    Created a console application on 24 hour notice as a sample of my work,
                    calculates irrational numbers.
                </Project>
            </div>

            <h2 className="text-2xl font-semibold text-gray-700 mt-10 mb-4 border-b border-gray-200 pb-2">2018</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
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
                <Project link="">
                    <Title>Developer Admin Site</Title>
                    <Tech>(Professional) C# .Net Core 2.0</Tech>
                    <Tech>ReactJS</Tech>
                    <Tech>Gulp</Tech>
                    <Tech>Webpack</Tech>
                    Created a simple administration site where we could monitor the run
                    of several of our back-end services.
                </Project>
            </div>

            <h2 className="text-2xl font-semibold text-gray-700 mt-10 mb-4 border-b border-gray-200 pb-2">2017</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
                <Project image="codingastronomer.png" link="">
                    <Title>Coding Astronomer (This Site)</Title>
                    <Tech>ReactJS</Tech>
                    <Tech>Bootstrap</Tech>
                    <Tech>CleanBlog Template</Tech>
                    A personal site (this site) to allow people who followed me on my
                    Wordpress blog to find me.
                </Project>
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
            </div>

            <h2 className="text-2xl font-semibold text-gray-700 mt-10 mb-4 border-b border-gray-200 pb-2">2016</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
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
                <Project image="lostwizard.png" link="/examples/lostwizard/index.html">
                    <Title>Lost Wizard</Title>
                    <Tech>JavaScript</Tech>
                    <Tech>PhaserJS</Tech>
                    I created a framework for PhaserJS which could parse files from the
                    Tiled Map Editor, and used configuration files to create a game.
                </Project>
                <Project image="periodictable.png" link="/examples/periodictable/index.html">
                    <Title>Periodic Table</Title>
                    <Tech>ReactJS</Tech>
                    A ReactJS experiment to try and render a responsive table manually:
                    it renders in three different forms.
                </Project>
                <Project image="arc.png" link="">
                    <Title>Revenue Management Pricing Website</Title>
                    <Tech>(Professional) JQuery</Tech>
                    <Tech>C# MVC</Tech>
                    <Tech>Datatables</Tech>
                    Extremely complex multiple-table, multiple-screen auto-updating interface.
                </Project>
            </div>

            <h2 className="text-2xl font-semibold text-gray-700 mt-10 mb-4 border-b border-gray-200 pb-2">2015</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
                <Project image="path.png" link="">
                    <Title>Accounting Check Website</Title>
                    <Tech>(Professional) JQuery</Tech>
                    <Tech>C# MVC</Tech>
                    <Tech>SQL</Tech>
                    An application for tracking and managing company checks.
                </Project>
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
                <Project link="">
                    <Title>Apollo Game</Title>
                    <Tech>JavaScript</Tech>
                    <Tech>PhaserJS</Tech>
                    My first experiment with PhaserJS, themed as the Apollo Moon landings.
                </Project>
            </div>

            <h2 className="text-2xl font-semibold text-gray-700 mt-10 mb-4 border-b border-gray-200 pb-2">2008-2014</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
                <Project image="nightember.png" link="/examples/nightember/index.html">
                    <Title>Night Ember</Title>
                    <Tech>JQuery</Tech>
                    <Tech>My Own CSS/Design</Tech>
                    A simple unit conversion app for astronomical units.
                </Project>
                <Project image="webiota.png" link="">
                    <Title>Webiota</Title>
                    <Tech>JQuery</Tech>
                    <Tech>PHP</Tech>
                    <Tech>JavaScript</Tech>
                    An astronomy site, which led me to landing my first professional job
                    in development. The domain lapsed, screenshots from the wayback machine.
                </Project>
                <Project image="gallery.png" link="/examples/photogallery/index.html">
                    <Title>Photo Gallery</Title>
                    <Tech>JQuery</Tech>
                    <Tech>PHP</Tech>
                    <Tech>JavaScript</Tech>
                    A simple site using a photo gallery library to show off some of my photos.
                </Project>
            </div>

            <h2 className="text-2xl font-semibold text-gray-700 mt-10 mb-4 border-b border-gray-200 pb-2">pre-2006 (High School)</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
                <Project link="">
                    <Title>Real-Estate Site</Title>
                    <Tech>Plain HTML</Tech>
                    <Tech>My Own CSS/Design</Tech>
                    A simple website for a small real-estate company for a friend's dad,
                    no longer available online.
                </Project>
                <Project link="">
                    <Title>Music Site</Title>
                    <Tech>Plain HTML</Tech>
                    <Tech>JavaScript</Tech>
                    <Tech>some Flash</Tech>
                    <Tech>My Own CSS/Design</Tech>
                    A simple website for a friend's dad's band, no longer available online.
                </Project>
                <Project link="">
                    <Title>Blue Sky Envy Site</Title>
                    <Tech>Plain HTML My Own CSS/Design</Tech>
                    A simple website for a local band, no longer available.
                </Project>
                <Project link="">
                    <Title>Graphing Tool</Title>
                    <Tech>C++</Tech>
                    A simple console application in C++ for outputting x,y plot files.
                </Project>
            </div>
        </div>
    )