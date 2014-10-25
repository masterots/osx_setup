#!/bin/bash

# DESCRIPTION
# Installs OSX applications.

# USAGE
# See the functions/functions.sh script for install choices and related usage.

# EXECUTION
# Dropbox
install_dmg_app "$DROPBOX_APP_URL" "$DROPBOX_APP_FILE" "Dropbox Installer" "$DROPBOX_APP_NAME"

# Knox
install_zip_app "$KNOX_APP_URL" "$KNOX_APP_FILE" "$KNOX_APP_NAME"

# iTerm
install_zip_app "$ITERM_APP_URL" "$ITERM_APP_FILE" "$ITERM_APP_NAME"

# Atom
install_zip_app "$ATOM_APP_URL" "$ATOM_APP_FILE" "$ATOM_APP_NAME"

# Sublime Text 2
install_dmg_app "$SUBLIME_TEXT_APP_URL" "$SUBLIME_TEXT_APP_FILE" "Sublime Text 2" "$SUBLIME_TEXT_APP_NAME"

# Sublime Text 2 URL Handler
install_zip_app "$SUBLIME_URL_HANDLER_APP_URL" "$SUBLIME_URL_HANDLER_APP_FILE" "$SUBLIME_URL_HANDLER_APP_NAME"

# Alfred
install_zip_app "$ALFRED_APP_URL" "$ALFRED_APP_FILE" "$ALFRED_APP_NAME"

# TextExpander
install_zip_app "$TEXTEXPANDER_APP_URL" "$TEXTEXPANDER_APP_FILE" "$TEXTEXPANDER_APP_NAME"

# Path Finder
install_zip_app "$PATH_FINDER_APP_URL" "$PATH_FINDER_APP_FILE" "$PATH_FINDER_APP_NAME"

# Firefox
install_dmg_app "$FIREFOX_APP_URL" "$FIREFOX_APP_FILE" "Firefox" "$FIREFOX_APP_NAME"

# Google Chrome
install_dmg_app "$CHROME_APP_URL" "$CHROME_APP_FILE" "Google Chrome" "$CHROME_APP_NAME"

# Google Chrome Canary
install_dmg_app "$CANARY_APP_URL" "$CANARY_APP_FILE" "Google Chrome Canary" "$CANARY_APP_NAME"

# Opera
install_dmg_app "$OPERA_APP_URL" "$OPERA_APP_FILE" "Opera" "$OPERA_APP_NAME"

# OmniGraffle
install_dmg_app "$OMNIGRAFFLE_APP_URL" "$OMNIGRAFFLE_APP_FILE" "OmniGrafflePro" "$OMNIGRAFFLE_APP_NAME"

# Transmit
install_zip_app "$TRANSMIT_APP_URL" "$TRANSMIT_APP_FILE" "$TRANSMIT_APP_NAME"

# iStat Menus (the app is the installer)
install_zip_app "$ISTATS_APP_URL" "$ISTATS_APP_FILE" "$ISTATS_APP_NAME"

# Bartender
install_zip_app "$BARTENDER_APP_URL" "$BARTENDER_APP_FILE" "$BARTENDER_APP_NAME"

# Snippets
install_zip_app "$SNIPPETS_APP_URL" "$SNIPPETS_APP_FILE" "$SNIPPETS_APP_NAME"

# Acorn
install_zip_app "$ACORN_APP_URL" "$ACORN_APP_FILE" "$ACORN_APP_NAME"

# DoubleTake
install_dmg_app "$DOUBLETAKE_APP_URL" "$DOUBLETAKE_APP_FILE" "DoubleTake" "$DOUBLETAKE_APP_NAME"

# ImageOptim
install_tar_app "$IMAGE_OPTIM_APP_URL" "$IMAGE_OPTIM_APP_FILE" "-xjf" "$IMAGE_OPTIM_APP_NAME"

# VLC
install_dmg_app "$VLC_APP_URL" "$VLC_APP_FILE" "vlc-2.1.5" "$VLC_APP_NAME"

# PG Admin
install_dmg_app "$PG_ADMIN_APP_URL" "$PG_ADMIN_APP_FILE" "pgAdmin3" "$PG_ADMIN_APP_NAME"

# Sequel Pro
install_dmg_app "$SEQUEL_PRO_APP_URL" "$SEQUEL_PRO_APP_FILE" "Sequel Pro 1.0.2" "$SEQUEL_PRO_APP_NAME"

# MoneyWell
install_zip_app "$MONEYWELL_APP_URL" "$MONEYWELL_APP_FILE" "$MONEYWELL_APP_NAME"

# CheatSheet
install_zip_app "$CHEATSHEET_APP_URL" "$CHEATSHEET_APP_FILE" "$CHEATSHEET_APP_NAME"

# OpenOffice
install_dmg_app "$OPEN_OFFICE_APP_URL" "$OPEN_OFFICE_APP_FILE" "OpenOffice" "$OPEN_OFFICE_APP_NAME"

# Cloak
install_dmg_app "$CLOAK_APP_URL" "$CLOAK_APP_FILE" "Cloak" "$CLOAK_APP_NAME"

# Screenhero
install_dmg_app "$SCREENHERO_APP_URL" "$SCREENHERO_APP_FILE" "Screenhero" "$SCREENHERO_APP_NAME"

# VirtualBox
install_dmg_pkg "$VIRTUAL_BOX_APP_URL" "$VIRTUAL_BOX_APP_FILE" "VirtualBox" "$VIRTUAL_BOX_APP_NAME"

# Doxie
install_dmg_app "$DOXIE_APP_URL" "$DOXIE_APP_FILE" "Doxie" "$DOXIE_APP_NAME"

# Sonos
install_dmg_app "$SONOS_APP_URL" "$SONOS_APP_FILE" "Sonos" "$SONOS_APP_NAME"

# App Cleaner
install_zip_app "$APP_CLEANER_APP_URL" "$APP_CLEANER_APP_FILE" "$APP_CLEANER_APP_NAME"

# Hazel (preference pane)
install_dmg_app "$HAZEL_APP_URL" "$HAZEL_APP_FILE" "Hazel" "$HAZEL_APP_NAME"

# Trailer
install_zip_app "$TRAILER_APP_URL" "$TRAILER_APP_FILE" "$TRAILER_APP_NAME"

# Trailer
install_zip_app "$CARBON_COPY_CLONER_APP_URL" "$CARBON_COPY_CLONER_APP_FILE" "$CARBON_COPY_CLONER_APP_NAME"
