"""Modal contents for /projects#<slug>: each slug maps to the project's own card plus its install guide."""

from components.games.faery_tale import FaeryTaleGuide
from components.games.space_combat import SpaceCombatGuide
from components.games.tzaar_net import TzaarNetGuide
from components.games.val_outcast import ValOutcastGuide
from components.projects import FairyTaleAdventure, SpaceGame3d, TzaarNet, ValOutcast

GUIDES = {
    "3dspacegame": (SpaceGame3d, SpaceCombatGuide),
    "faerytale": (FairyTaleAdventure, FaeryTaleGuide),
    "valoutcast": (ValOutcast, ValOutcastGuide),
    "tzaarnet": (TzaarNet, TzaarNetGuide),
}
