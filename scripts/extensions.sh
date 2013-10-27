#!/bin/sh

# DESCRIPTION
# Installs application extensions.

# USAGE
# See the functions/functions.sh script for install choices and related usage.

# EXECUTION
# Vim - Pathogen
install_file "$VIM_PATHOGEN_EXTENSION_URL" "$VIM_PATHOGEN_EXTENSION_PATH"

# Google Chrome - Rails Panel
install_git_app "$RAILS_PANEL_EXTENSION_URL" "$RAILS_PANEL_EXTENSION_PATH"

# Google Chrome - Ember Inspector
install_git_app "$EMBER_INSPECTOR_EXTENSION_URL" "$EMBER_INSPECTOR_EXTENSION_PATH"

# Google Chrome - Chrome Logger
install_git_app "$CHROME_LOGGER_EXTENSION_URL" "$CHROME_LOGGER_EXTENSION_PATH"

# Sublime Text 2 - Git
install_git_app "$GIT_EXTENSION_URL" "$GIT_EXTENSION_PATH"

# Sublime Text 2 - Git Gutter
install_git_app "$GIT_GUTTER_EXTENSION_URL" "$GIT_GUTTER_EXTENSION_PATH"

# Sublime Text 2 - Gist
install_git_app "$GIST_EXTENSION_URL" "$GIST_EXTENSION_PATH"

# Sublime Text 2 - Local History
install_git_app "$LOCAL_HISTORY_EXTENSION_URL" "$LOCAL_HISTORY_EXTENSION_PATH"

# Sublime Text 2 - CTags
install_git_app "$CTAGS_EXTENSION_URL" "$CTAGS_EXTENSION_PATH"

# Sublime Text 2 - Sidebar Enhancments
install_git_app "$SIDEBAR_ENHANCEMENTS_EXTENSION_URL" "$SIDEBAR_ENHANCEMENTS_EXTENSION_PATH"

# Sublime Text 2 - Advanced New File
install_git_app "$ADVANCED_NEW_FILE_EXTENSION_URL" "$ADVANCED_NEW_FILE_EXTENSION_PATH"

# Sublime Text 2 - Move Tab
install_git_app "$MOVE_TAB_EXTENSION_URL" "$MOVE_TAB_EXTENSION_PATH"

# Sublime Text 2 - Apply Syntax
install_git_app "$APPLY_SYNTAX_EXTENSION_URL" "$APPLY_SYNTAX_EXTENSION_PATH"

# Sublime Text 2 - Change Quotes
install_git_app "$CHANGE_QUOTES_EXTENSION_URL" "$CHANGE_QUOTES_EXTENSION_PATH"

# Sublime Text 2 - Bracket Highlighter
install_git_app "$BRACKET_HIGHLIGHTER_EXTENSION_URL" "$BRACKET_HIGHLIGHTER_EXTENSION_PATH"

# Sublime Text 2 - Trailing Spaces
install_git_app "$TRAILING_SPACES_EXTENSION_URL" "$TRAILING_SPACES_EXTENSION_PATH"

# Sublime Text 2 - Color Highlighter
install_git_app "$COLOR_HIGHLIGHTER_EXTENSION_URL" "$COLOR_HIGHLIGHTER_EXTENSION_PATH"

# Sublime Text 2 - Alignment
install_git_app "$ALIGNMENT_EXTENSION_URL" "$ALIGNMENT_EXTENSION_PATH"

# Sublime Text 2 - WrapPlus
install_git_app "$WRAP_PLUS_EXTENSION_URL" "$WRAP_PLUS_EXTENSION_PATH"

# Sublime Text 2 - Autoprefixer
install_git_app "$AUTOPREFIXER_EXTENSION_URL" "$AUTOPREFIXER_EXTENSION_PATH"

# Sublime Text 2 - Xiki
install_git_app "$XIKI_EXTENSION_URL" "$XIKI_EXTENSION_PATH"

# Sublime Text 2 - Easy Motion
install_git_app "$EASY_MOTION_EXTENSION_URL" "$EASY_MOTION_EXTENSION_PATH"

# Sublime Text 2 - Emmet
install_git_app "$EMMET_EXTENSION_URL" "$EMMET_EXTENSION_PATH"

# Sublime Text 2 - Emmet LiveStyle
install_git_app "$EMMET_LIVE_STYLE_EXTENSION_URL" "$EMMET_LIVE_STYLE_EXTENSION_PATH"

# Sublime Text 2 - Web Inspector
install_git_app "$WEB_INSPECTOR_EXTENSION_URL" "$WEB_INSPECTOR_EXTENSION_PATH"

# Sublime Text 2 - Sublime Linter
install_git_app "$LINTER_EXTENSION_URL" "$LINTER_EXTENSION_PATH"

# Sublime Text 2 - SASS/SCSS
install_git_app "$SCSS_EXTENSION_URL" "$SCSS_EXTENSION_PATH"

# Sublime Text 2 - CSScomb
install_git_app "$CSSCOMB_EXTENSION_URL" "$CSSCOMB_EXTENSION_PATH"

# Sublime Text 2 - Coffee Script
install_git_app "$COFFEE_SCRIPT_EXTENSION_URL" "$COFFEE_SCRIPT_EXTENSION_PATH"

# Sublime Text 2 - DashDoc
install_git_app "$DASH_DOC_EXTENSION_URL" "$DASH_DOC_EXTENSION_PATH"
