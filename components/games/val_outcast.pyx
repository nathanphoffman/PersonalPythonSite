from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.links import ExternalLink
from components.games.install_guide import InstallGuide

DEMO_GIF = "/static/img/valoutcast.gif"
DEMO_VIDEO = "https://drive.proton.me/urls/21DQ3D35A4#2rorWLqOYOXn"

STEPS = [
    ("You need Linux, native Valheim with BepInEx (Steam launch option: ./start_game_bepinex.sh %command%), and a Steam copy of Jedi Outcast. Build tools: .NET SDK, CMake, gcc/g++, and libjpeg-dev libpng-dev libsdl2-dev libopenal-dev.", ""),
    ("Download the project.", "git clone https://github.com/nathanphoffman/ValOutcast\ncd ValOutcast"),
    ("Build the Valheim plugin. This also copies it into Valheim's BepInEx/plugins folder.", "cd worlds/valheim && dotnet build"),
    ("Build the Outcast side: OpenJK plus the bridge, from the ValOutcast folder.", "git clone https://github.com/JACoders/OpenJK third_party/OpenJK\ntools/apply_outcast.sh\nmkdir -p third_party/OpenJK/buildjo && cd third_party/OpenJK/buildjo\ncmake .. -DCMAKE_BUILD_TYPE=Release -DBuildSPEngine=OFF -DBuildSPGame=OFF -DBuildSPRdVanilla=OFF \\\n  -DBuildMPCGame=OFF -DBuildMPGame=OFF -DBuildMPUI=OFF -DBuildMPDed=OFF -DBuildMPEngine=OFF \\\n  -DBuildMPRdVanilla=OFF -DBuildMPRend2=OFF -DBuildJK2SPEngine=ON -DBuildJK2SPGame=ON -DBuildJK2SPRdVanilla=ON\nmake -j$(nproc)"),
    ("Make third_party/jk2run with links to the three built files and your game's base/*.pk3 (the repo's docs/PLAN.md, \"Phase 0 status\", has the details).", ""),
    ("Run it: start Valheim, load a world and wait until you are standing on the ground, then start the Outcast side and play in the Valheim window.", "tools/run_outcast.sh"),
]


@component
def ValOutcastGuide() -> Any:
    demo_link = <ExternalLink href={DEMO_VIDEO}>Watch the demo video.</ExternalLink>

    # Lazy loading keeps the big gif from downloading until the modal is actually opened
    demo_gif = (
        <img src={DEMO_GIF} alt="ValOutcast in action." loading="lazy" className="w-full rounded shadow mb-3" />
    )

    return <InstallGuide steps={STEPS}>{demo_gif}{demo_link}</InstallGuide>
