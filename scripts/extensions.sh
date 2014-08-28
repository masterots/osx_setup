#!/bin/bash

# DESCRIPTION
# Installs application extensions.

# USAGE
# See the functions/functions.sh script for install choices and related usage.

# EXECUTION
# Vim - Pathogen
install_file "$VIM_PATHOGEN_EXTENSION_URL" "$VIM_PATHOGEN_EXTENSION_PATH"

# Vim - Fugitive
install_git_app "$VIM_FUGITIVE_EXTENSION_URL" "$VIM_FUGITIVE_EXTENSION_PATH"

# Vim - Unimpaired
install_git_app "$VIM_UNIMPAIRED_EXTENSION_URL" "$VIM_UNIMPAIRED_EXTENSION_PATH"

# Vim - Commentary
install_git_app "$VIM_COMMENTARY_EXTENSION_URL" "$VIM_COMMENTARY_EXTENSION_PATH"

# Vim - Git Gutter
install_git_app "$VIM_GIT_GUTTER_EXTENSION_URL" "$VIM_GIT_GUTTER_EXTENSION_PATH"

# Vim - Bundler
install_git_app "$VIM_BUNDLER_EXTENSION_URL" "$VIM_BUNDLER_EXTENSION_PATH"

# Vim - Ruby
install_git_app "$VIM_RUBY_EXTENSION_URL" "$VIM_RUBY_EXTENSION_PATH"

# Vim - Text Object
install_git_app "$VIM_TEXT_OBJECT_EXTENSION_URL" "$VIM_TEXT_OBJECT_EXTENSION_PATH"

# Vim - Text Object Ruby Block
install_git_app "$VIM_TEXT_OBJECT_RUBY_BLOCK_EXTENSION_URL" "$VIM_TEXT_OBJECT_RUBY_BLOCK_EXTENSION_PATH"

# Vim - Rails
install_git_app "$VIM_RAILS_EXTENSION_URL" "$VIM_RAILS_EXTENSION_PATH"

# Atom - CTags
install_atom_extension "$ATOM_CTAGS_EXTENSION_PATH"

# Atom - Autocomplete Paths
install_atom_extension "$ATOM_AUTOCOMPLETE_PATHS_EXTENSION_PATH"

# Atom - Autocomplete Plus
install_atom_extension "$ATOM_AUTOCOMPLETE_PLUS_EXTENSION_PATH"

# Atom - Color Picker
install_atom_extension "$ATOM_COLOR_PICKER_EXTENSION_PATH"

# Atom - Dash
install_atom_extension "$ATOM_DASH_EXTENSION_PATH"

# Atom - Easy Motion
install_atom_extension "$ATOM_EASY_MOTION_EXTENSION_PATH"

# Atom - Emmet
install_atom_extension "$ATOM_EMMET_EXTENSION_PATH"

# Atom - Git Plus
install_atom_extension "$ATOM_GIT_PLUS_EXTENSION_PATH"

# Atom - Inline Autocomplete
install_atom_extension "$ATOM_INLINE_AUTOCOMPLETE_EXTENSION_PATH"

# Atom - IPlastic Syntax
install_atom_extension "$ATOM_IPLASTIC_SYNTAX_EXTENSION_PATH"

# Atom - Linter
install_atom_extension "$ATOM_LINTER_EXTENSION_PATH"

# Atom - Linter (CSS)
install_atom_extension "$ATOM_LINTER_CSS_EXTENSION_PATH"

# Atom - Linter (JSHint)
install_atom_extension "$ATOM_LINTER_JSHINT_EXTENSION_PATH"

# Atom - Linter (Rubocop)
install_atom_extension "$ATOM_LINTER_RUBOCOP_EXTENSION_PATH"

# Atom - Linter (Ruby)
install_atom_extension "$ATOM_LINTER_RUBY_EXTENSION_PATH"

# Atom - Linter (SCSS)
install_atom_extension "$ATOM_LINTER_SCSS_EXTENSION_PATH"

# Atom - Linter (ShellCheck)
install_atom_extension "$ATOM_LINTER_SHELL_CHECK_EXTENSION_PATH"

# Atom - Local History
install_atom_extension "$ATOM_LOCAL_HISTORY_EXTENSION_PATH"

# Atom - Open Last Project
install_atom_extension "$ATOM_OPEN_LAST_PROJECT_EXTENSION_PATH"

# Atom - Pain Split
install_atom_extension "$ATOM_PAIN_SPLIT_EXTENSION_PATH"

# Atom - Project Manager
install_atom_extension "$ATOM_PROJECT_MANAGER_EXTENSION_PATH"

# Atom - Rails RSpec
install_atom_extension "$ATOM_RAILS_RSPEC_EXTENSION_PATH"

# Atom - Reveal Active File Context
install_atom_extension "$ATOM_REVEAL_ACTIVE_FILE_CONTEXT_EXTENSION_PATH"

# Atom - Ruby Slim
install_atom_extension "$ATOM_RUBY_SLIM_EXTENSION_PATH"

# Atom - Ruby Test
install_atom_extension "$ATOM_RUBY_TEST_EXTENSION_PATH"

# Atom - Tab Move Key
install_atom_extension "$ATOM_TAB_MOVE_KEY_EXTENSION_PATH"

# Atom - TODO Show
install_atom_extension "$ATOM_TODO_SHOW_EXTENSION_PATH"

# Atom - Toggle Quotes
install_atom_extension "$ATOM_TOGGLE_QUOTES_EXTENSION_PATH"

# Atom - Trailing Spaces
install_atom_extension "$ATOM_TRAILING_SPACES_EXTENSION_PATH"

# Atom - Vim Mode
install_atom_extension "$ATOM_VIM_MODE_EXTENSION_PATH"

# Atom - Wrap Lines
install_atom_extension "$ATOM_WRAP_LINES_EXTENSION_PATH"

# Atom - Yosemite Unity UI
install_atom_extension "$ATOM_YOSEMITE_UNITY_UI_EXTENSION_PATH"

# Sublime Text 2 - Git
install_git_app "$GIT_EXTENSION_URL" "$GIT_EXTENSION_PATH"

# Sublime Text 2 - Git Gutter
install_git_app "$GIT_GUTTER_EXTENSION_URL" "$GIT_GUTTER_EXTENSION_PATH"

# Sublime Text 2 - Gist
install_git_app "$GIST_EXTENSION_URL" "$GIST_EXTENSION_PATH"

# Sublime Text 2 - Keymaps
install_git_app "$KEYMAPS_EXTENSION_URL" "$KEYMAPS_EXTENSION_PATH"

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
install_git_app "$CHANGE_QUOTES_EXTENSION_URL" "$CHANGE_QUOTES_EXTENSION_PATH" "$CHANGE_QUOTES_EXTENSION_OPTIONS"

# Sublime Text 2 - Bracket Highlighter
install_git_app "$BRACKET_HIGHLIGHTER_EXTENSION_URL" "$BRACKET_HIGHLIGHTER_EXTENSION_PATH"

# Sublime Text 2 - Trailing Spaces
install_git_app "$TRAILING_SPACES_EXTENSION_URL" "$TRAILING_SPACES_EXTENSION_PATH"

# Sublime Text 2 - Gutter Color
install_git_app "$GUTTER_COLOR_EXTENSION_URL" "$GUTTER_COLOR_EXTENSION_PATH"

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

# Sublime Text 2 - Ruby Extract Method
install_git_app "$RUBY_EXTRACT_METHOD_EXTENSION_URL" "$RUBY_EXTRACT_METHOD_EXTENSION_PATH"

# Sublime Text 2 - Ruby Slim
install_git_app "$RUBY_SLIM_EXTENSION_URL" "$RUBY_SLIM_EXTENSION_PATH"

# Sublime Text 2 - Markdown Extended
install_git_app "$MARKDOWN_EXTENSION_URL" "$MARKDOWN_EXTENSION_PATH"

# Sublime Text 2 - SCSS
install_git_app "$SCSS_EXTENSION_URL" "$SCSS_EXTENSION_PATH"

# Sublime Text 2 - CSScomb
install_git_app "$CSSCOMB_EXTENSION_URL" "$CSSCOMB_EXTENSION_PATH"

# Sublime Text 2 - Coffee Script
install_git_app "$COFFEE_SCRIPT_EXTENSION_URL" "$COFFEE_SCRIPT_EXTENSION_PATH"

# Sublime Text 2 - HTML Prettify
install_git_app "$HTML_PRETTIFY_EXTENSION_URL" "$HTML_PRETTIFY_EXTENSION_PATH"

# Sublime Text 2 - DashDoc
install_git_app "$DASH_DOC_EXTENSION_URL" "$DASH_DOC_EXTENSION_PATH"

# Sublime Text 2 - Table Editor
install_git_app "$TABLE_EDITOR_EXTENSION_URL" "$TABLE_EDITOR_EXTENSION_PATH"

# Google Chrome - Rails Panel
install_git_app "$RAILS_PANEL_EXTENSION_URL" "$RAILS_PANEL_EXTENSION_PATH"

# Google Chrome - Ember Inspector
install_git_app "$EMBER_INSPECTOR_EXTENSION_URL" "$EMBER_INSPECTOR_EXTENSION_PATH"

# Google Chrome - Chrome Logger
install_git_app "$CHROME_LOGGER_EXTENSION_URL" "$CHROME_LOGGER_EXTENSION_PATH"
