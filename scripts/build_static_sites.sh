#!/usr/bin/env bash
# Builds the standalone browser projects into sites/<name>/, which main.py serves at /<name>.
# Override where the source repos live with LOST_WIZARD_DIR, RPG_FROM_SCRATCH_DIR, NIGHT_EMBER_DIR, PHOTO_GALLERY_DIR and PERIODIC_TABLE_DIR.
set -euo pipefail

SITE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SITES_DIR="$SITE_DIR/sites"
LOST_WIZARD_DIR="${LOST_WIZARD_DIR:-$HOME/Code/LostWizardGame}"
RPG_FROM_SCRATCH_DIR="${RPG_FROM_SCRATCH_DIR:-$HOME/Code/RPGFromScratch}"
NIGHT_EMBER_DIR="${NIGHT_EMBER_DIR:-$HOME/Code/NightEmber}"
PHOTO_GALLERY_DIR="${PHOTO_GALLERY_DIR:-$HOME/Code/PhotoGallery}"
PERIODIC_TABLE_DIR="${PERIODIC_TABLE_DIR:-$HOME/Code/PeriodicTable}"

require_folder() {
    if [ ! -d "$1" ]; then
        echo "Folder not found: $1" >&2
        exit 1
    fi
}

# Lost Wizard is plain files: its bundle.js is already committed, so only the page and its assets are copied.
build_lost_wizard() {
    require_folder "$LOST_WIZARD_DIR"
    rm -rf "$SITES_DIR/lostwizard"
    mkdir -p "$SITES_DIR/lostwizard/app/js"
    cp "$LOST_WIZARD_DIR/index.html" "$SITES_DIR/lostwizard/"
    cp -r "$LOST_WIZARD_DIR/assets" "$SITES_DIR/lostwizard/"
    cp "$LOST_WIZARD_DIR/app/js/bundle.js" "$SITES_DIR/lostwizard/app/js/"
}

# RPG From Scratch needs a Vite build; --base makes its asset links work under /rpgfromscratch/.
build_rpg_from_scratch() {
    require_folder "$RPG_FROM_SCRATCH_DIR"
    (cd "$RPG_FROM_SCRATCH_DIR" && [ -d node_modules ] || npm install --prefix "$RPG_FROM_SCRATCH_DIR")
    (cd "$RPG_FROM_SCRATCH_DIR" && npx vite build --base=/rpgfromscratch/ --outDir "$SITES_DIR/rpgfromscratch" --emptyOutDir)
}

# Night Ember: only the files its page loads (the repo also holds a 30MB star catalog and saved web pages it never uses).
# The page asks for jQuery and a font over http://, which browsers block on an https site, so those become https://.
build_night_ember() {
    require_folder "$NIGHT_EMBER_DIR"
    rm -rf "$SITES_DIR/nightember"
    mkdir -p "$SITES_DIR/nightember/js"
    cp -r "$NIGHT_EMBER_DIR/css" "$NIGHT_EMBER_DIR/img" "$SITES_DIR/nightember/"
    cp "$NIGHT_EMBER_DIR/js/calculator.js" "$NIGHT_EMBER_DIR/js/calculatorUnits.js" "$SITES_DIR/nightember/js/"
    sed 's|http://ajax.googleapis.com|https://ajax.googleapis.com|; s|http://fonts.googleapis.com|https://fonts.googleapis.com|' \
        "$NIGHT_EMBER_DIR/index.html" > "$SITES_DIR/nightember/index.html"
}

# Photo Gallery: the page, the two scripts and stylesheet it uses, and the photo folders.
build_photo_gallery() {
    require_folder "$PHOTO_GALLERY_DIR"
    rm -rf "$SITES_DIR/photogallery"
    mkdir -p "$SITES_DIR/photogallery/src"
    cp "$PHOTO_GALLERY_DIR/index.html" "$SITES_DIR/photogallery/"
    cp "$PHOTO_GALLERY_DIR/src/jquery.min.js" "$PHOTO_GALLERY_DIR/src/jquery.mixitup.min.js" "$PHOTO_GALLERY_DIR/src/template.css" "$SITES_DIR/photogallery/src/"
    cp -r "$PHOTO_GALLERY_DIR/2012" "$PHOTO_GALLERY_DIR/2013" "$SITES_DIR/photogallery/"
}

# Periodic Table ships a built bundle.js, and loads elements.csv from beside the page; the React copies in vendor/ are not used by the page, so they are skipped.
build_periodic_table() {
    require_folder "$PERIODIC_TABLE_DIR"
    rm -rf "$SITES_DIR/periodictable"
    mkdir -p "$SITES_DIR/periodictable/app/js" "$SITES_DIR/periodictable/vendor"
    cp "$PERIODIC_TABLE_DIR/index.html" "$PERIODIC_TABLE_DIR/elements.csv" "$SITES_DIR/periodictable/"
    cp -r "$PERIODIC_TABLE_DIR/app/css" "$PERIODIC_TABLE_DIR/app/data" "$SITES_DIR/periodictable/app/"
    cp "$PERIODIC_TABLE_DIR/app/js/bundle.js" "$SITES_DIR/periodictable/app/js/"
    cp -r "$PERIODIC_TABLE_DIR/vendor/bootstrap" "$PERIODIC_TABLE_DIR/vendor/routie.min.js" "$SITES_DIR/periodictable/vendor/"
}

mkdir -p "$SITES_DIR"
build_lost_wizard
build_rpg_from_scratch
build_night_ember
build_photo_gallery
build_periodic_table

echo "Built into $SITES_DIR:"
du -sh "$SITES_DIR"/*
