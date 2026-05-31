from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project  # type: ignore[import-not-found]
from components.pages.project_grid import ProjectGrid

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

            <h2 className="text-2xl font-semibold text-gray-700 mt-10 mb-4 border-b border-gray-200 pb-2">2020</h2>
            <ProjectGrid>
                <Project name="CleanBlog React v2" tech="React, Bootstrap" image="codingastronomer.png" link="">
                    Updating my personal website (this site) to use the latest version
                    of React, and cleaning some things up.
                </Project>
                <Project name="Vue Calendar" tech="Node, Mongo, Vue, CSS" image="" link="">
                    Creating a calendar with Node, MongoDB, Vue and pure-CSS.
                </Project>
            </ProjectGrid>

            <h2 className="text-2xl font-semibold text-gray-700 mt-10 mb-4 border-b border-gray-200 pb-2">2019</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
                <Project name="Vexmen Robotics Website" tech="(Professional) MithrilJS, NodeJS, Webscraper" image="vexmen.png" link="http://order.vexmen.com/#!/order">
                    Created a website for a local Brandywine robotics organization and their school kids.
                </Project>
                <Project name="JetSense.AI Facebook Integration" tech="(Professional) C# .NET Core 2.2, AWS DynamoDB, FB Graph API, FB Messenger." image="facebook.png" link="">
                    Setup an integration between Facebook and JetSense's chatbot services.
                </Project>
                <Project name="Irrational Calculator" tech="C# .NET Core 2.2" image="console.png" link="https://github.com/nathanphoffman/IrrationalCalculator">
                    Created a console application on 24 hour notice as a sample of my work,
                    calculates irrational numbers.
                </Project>
            </div>

            <h2 className="text-2xl font-semibold text-gray-700 mt-10 mb-4 border-b border-gray-200 pb-2">2018</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
                <Project name="Forms System (BPM/Workflows)" tech="(Professional) VueJS, Web Api, Azure Service Bus, SQL, and MongoDB Storage" image="forms.png" link="">
                    Created a BPM solution; it was a 3 year project, completed in 2018
                    and touched almost every department.
                </Project>
                <Project name="Developer Admin Site" tech="(Professional) C# .Net Core 2.0, ReactJS, Gulp, Webpack" link="">
                    Created a simple administration site where we could monitor the run
                    of several of our back-end services.
                </Project>
            </div>

            <h2 className="text-2xl font-semibold text-gray-700 mt-10 mb-4 border-b border-gray-200 pb-2">2017</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
                <Project name="Coding Astronomer (This Site)" tech="ReactJS, Bootstrap, CleanBlog Template" image="codingastronomer.png" link="">
                    A personal site (this site) to allow people who followed me on my
                    Wordpress blog to find me.
                </Project>
                <Project name="A Centralized Web Service" tech="(Professional) C# Web Api, OAuth, Owin, NodeJS, ExpressJS, MongoDB" link="">
                    A web service designed to integrate several of our existing systems
                    and redirect them to multiple point-of-sales during a point-of-sale transition.
                </Project>
                <Project name="Operations Checklist Website" tech="(Professional) JQuery, C# MVC, SQL, Azure Services, Azure ServiceBus, Azure AD, ADAL.JS" link="" image="efc.PNG">
                    A website which turned an Operations checklist digital and
                    streamlined the foreclosure process.
                </Project>
            </div>

            <h2 className="text-2xl font-semibold text-gray-700 mt-10 mb-4 border-b border-gray-200 pb-2">2016</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
                <Project name="Operations Reporting Website (DM Update)" tech="(Professional) ReactJS, C# Web API, Linq, Azure Services, Azure ServiceBus, Azure AD, Bootstrap" image="dmupdate.png" link="">
                    My first professional use of ReactJS, and build tools like Gulp, Webpack, etc.
                </Project>
                <Project name="Lost Wizard" tech="JavaScript, PhaserJS" image="lostwizard.png" link="/examples/lostwizard/index.html">
                    I created a framework for PhaserJS which could parse files from the
                    Tiled Map Editor, and used configuration files to create a game.
                </Project>
                <Project name="Periodic Table" tech="ReactJS" image="periodictable.png" link="/examples/periodictable/index.html">
                    A ReactJS experiment to try and render a responsive table manually:
                    it renders in three different forms.
                </Project>
                <Project name="Revenue Management Pricing Website" tech="(Professional) JQuery, C# MVC, Datatables" image="arc.png" link="">
                    Extremely complex multiple-table, multiple-screen auto-updating interface.
                </Project>
            </div>

            <h2 className="text-2xl font-semibold text-gray-700 mt-10 mb-4 border-b border-gray-200 pb-2">2015</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
                <Project name="Accounting Check Website" tech="(Professional) JQuery, C# MVC, SQL" image="path.png" link="">
                    An application for tracking and managing company checks.
                </Project>
                <Project name="BPM Solution" tech="(Professional) JQuery, PHP, MySQL, ProcessMaker BPM, C# Console Applications" image="workflows.png" link="">
                    My first professional coding project, I brought our BPM process
                    inhouse to an open source solution.
                </Project>
                <Project name="Apollo Game" tech="JavaScript, PhaserJS" link="">
                    My first experiment with PhaserJS, themed as the Apollo Moon landings.
                </Project>
            </div>

            <h2 className="text-2xl font-semibold text-gray-700 mt-10 mb-4 border-b border-gray-200 pb-2">2008&#8211;2014</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
                <Project name="Night Ember" tech="JQuery, My Own CSS/Design" image="nightember.png" link="/examples/nightember/index.html">
                    A simple unit conversion app for astronomical units.
                </Project>
                <Project name="Webiota" tech="JQuery, PHP, JavaScript" image="webiota.png" link="">
                    An astronomy site, which led me to landing my first professional job
                    in development. The domain lapsed, screenshots from the wayback machine.
                </Project>
                <Project name="Photo Gallery" tech="JQuery, PHP, JavaScript" image="gallery.png" link="/examples/photogallery/index.html">
                    A simple site using a photo gallery library to show off some of my photos.
                </Project>
            </div>

            <h2 className="text-2xl font-semibold text-gray-700 mt-10 mb-4 border-b border-gray-200 pb-2">pre-2006 (High School)</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
                <Project name="Real-Estate Site" tech="Plain HTML, My Own CSS/Design" link="">
                    A simple website for a small real-estate company for a friend's dad,
                    no longer available online.
                </Project>
                <Project name="Music Site" tech="Plain HTML, JavaScript, some Flash, My Own CSS/Design" link="">
                    A simple website for a friend's dad's band, no longer available online.
                </Project>
                <Project name="Blue Sky Envy Site" tech="Plain HTML My Own CSS/Design" link="">
                    A simple website for a local band, no longer available.
                </Project>
                <Project name="Graphing Tool" tech="C++" link="">
                    A simple console application in C++ for outputting x,y plot files.
                </Project>
            </div>
        </div>
    )
