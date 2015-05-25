#!/bin/bash

# DESCRIPTION
# Installs OSX applications.

# EXECUTION
# Dropbox
install_dmg_app "$DROPBOX_APP_URL" "Dropbox Installer" "$DROPBOX_APP_NAME"

# CloudApp
install_dmg_app "$CLOUD_APP_URL" "CloudApp" "$CLOUD_APP_NAME"

# Knox
install_zip_app "$KNOX_APP_URL" "$KNOX_APP_NAME"

# iTerm
install_zip_app "$ITERM_APP_URL" "$ITERM_APP_NAME"

# Sublime Text
install_dmg_app "$SUBLIME_TEXT_APP_URL" "Sublime Text" "$SUBLIME_TEXT_APP_NAME"

# Sublime Text URL Handler
install_zip_app "$SUBLIME_URL_HANDLER_APP_URL" "$SUBLIME_URL_HANDLER_APP_NAME"

# Alfred
install_zip_app "$ALFRED_APP_URL" "$ALFRED_APP_NAME"

# TextExpander
install_zip_app "$TEXTEXPANDER_APP_URL" "$TEXTEXPANDER_APP_NAME"

# Path Finder
install_zip_app "$PATH_FINDER_APP_URL" "$PATH_FINDER_APP_NAME"

# Firefox
install_dmg_app "$FIREFOX_APP_URL" "Firefox" "$FIREFOX_APP_NAME"

# Google Chrome
install_dmg_app "$CHROME_APP_URL" "Google Chrome" "$CHROME_APP_NAME"

# Opera
install_dmg_app "$OPERA_APP_URL" "Opera" "$OPERA_APP_NAME"

# OmniGraffle
install_dmg_app "$OMNIGRAFFLE_APP_URL" "OmniGrafflePro" "$OMNIGRAFFLE_APP_NAME"

# Transmit
install_zip_app "$TRANSMIT_APP_URL" "$TRANSMIT_APP_NAME"

# iStat Menus
install_zip_app "$ISTATS_APP_URL" "$ISTATS_APP_NAME"

# Bartender
install_zip_app "$BARTENDER_APP_URL" "$BARTENDER_APP_NAME"

# Snippets
install_zip_app "$SNIPPETS_APP_URL" "$SNIPPETS_APP_NAME"

# Acorn
install_zip_app "$ACORN_APP_URL" "$ACORN_APP_NAME"

# DoubleTake
install_dmg_app "$DOUBLETAKE_APP_URL" "DoubleTake" "$DOUBLETAKE_APP_NAME"

# ImageOptim
install_tar_app "$IMAGE_OPTIM_APP_URL" "$IMAGE_OPTIM_APP_NAME" "-xjf"

# Iconjar
install_zip_app "$ICONJAR_APP_URL" "$ICONJAR_APP_NAME"

# VLC
install_dmg_app "$VLC_APP_URL" "vlc-2.2.0" "$VLC_APP_NAME"

# PG Admin
install_dmg_app "$PG_ADMIN_APP_URL" "pgAdmin3" "$PG_ADMIN_APP_NAME"

# PSequael
install_zip_app "$PSEQUEL_APP_URL" "$PSEQUEL_APP_NAME"

# Sequel Pro
install_dmg_app "$SEQUEL_PRO_APP_URL" "Sequel Pro 1.0.2" "$SEQUEL_PRO_APP_NAME"

# CheatSheet
install_zip_app "$CHEATSHEET_APP_URL" "$CHEATSHEET_APP_NAME"

# OpenOffice
install_dmg_app "$OPEN_OFFICE_APP_URL" "OpenOffice" "$OPEN_OFFICE_APP_NAME"

# Cloak
install_dmg_app "$CLOAK_APP_URL" "Cloak" "$CLOAK_APP_NAME"

# Screenhero
install_dmg_app "$SCREENHERO_APP_URL" "Screenhero" "$SCREENHERO_APP_NAME"

# Speak
install_dmg_app "$SPEAK_APP_URL" "Speak Installer" "$SPEAK_APP_NAME"

# VirtualBox
install_dmg_pkg "$VIRTUAL_BOX_APP_URL" "VirtualBox" "$VIRTUAL_BOX_APP_NAME"

# Doxie
install_dmg_app "$DOXIE_APP_URL" "Doxie" "$DOXIE_APP_NAME"

# Sonos
install_dmg_app "$SONOS_APP_URL" "Sonos" "$SONOS_APP_NAME"

# App Cleaner
install_zip_app "$APP_CLEANER_APP_URL" "$APP_CLEANER_APP_NAME"

# Hazel
install_dmg_app "$HAZEL_APP_URL" "Hazel" "$HAZEL_APP_NAME"

# Trailer
install_zip_app "$TRAILER_APP_URL" "$TRAILER_APP_NAME"

# Carbon Copy Cloner
install_zip_app "$CARBON_COPY_CLONER_APP_URL" "$CARBON_COPY_CLONER_APP_NAME"

# QuickLook - Plain Text
install_zip_app "$QUICK_LOOK_PLAIN_TEXT_APP_URL" "$QUICK_LOOK_PLAIN_TEXT_APP_NAME"
