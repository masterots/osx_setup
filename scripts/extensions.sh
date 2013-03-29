#!/bin/sh

# DESCRIPTION
# Installs OSX application extensions.

# EXECUTION
# Google Chrome - RailsPanel
install_git_app "$RAILS_PANEL_EXTENSION_URL" "$RAILS_PANEL_EXTENSION_PATH"

# Sublime Text 2 - GitGutter
install_git_app "$GIT_GUTTER_EXTENSION_URL" "$GIT_GUTTER_EXTENSION_PATH"

# Sublime Text 2 - EasyMotion
install_git_app "$EASY_MOTION_EXTENSION_URL" "$EASY_MOTION_EXTENSION_PATH"

# Sublime Text 2 - Web Inspector
install_git_app "$WEB_INSPECTOR_EXTENSION_URL" "$WEB_INSPECTOR_EXTENSION_PATH"
