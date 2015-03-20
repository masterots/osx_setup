#!/bin/bash

# DESCRIPTION
# Defines global settings.

# SETTINGS
# General
set -o nounset # Exit, with error message, when attempting to use an undefined variable.
set -o errexit # Abort script at first error, when a command exits with non-zero status.
set -o pipefail # Returns exit status of the last command in the pipe that returned a non-zero return value.
IFS=$'\n\t' # Defines how Bash splits words and iterates arrays. This defines newlines and tabs as delimiters.
export SYSTEM_LABEL=Alchemist # Placeholder for system display name.
export SYSTEM_NAME=alchemist # Placeholder for system name.
export SYSTEM_DOMAIN=arda # Placeholder for system top level domain. Example: https://example.arda.
export WORK_PATH=/tmp/downloads # Temporary location for processing of file downloads and installers.

# Ruby
export MRI=2.2.1
export JRUBY=jruby-1.7.18
export RUBINIUS=rbx-2.5.2

# Applications
export DROPBOX_APP_NAME=Dropbox.app
export DROPBOX_APP_URL="https://www.dropbox.com/download?src=index&plat=mac"

export KNOX_APP_NAME=Knox.app
export KNOX_APP_URL="https://d13itkw33a7sus.cloudfront.net/dist/K/Knox-2.2.0.zip"

export ITERM_APP_NAME=iTerm.app
export ITERM_APP_URL="http://iterm2.com/downloads/stable/iTerm2_v2_0.zip"

export VIM_EXTENSION_ROOT="$HOME/.vim/bundle"
export VIM_PATHOGEN_EXTENSION_PATH="$HOME/.vim/autoload/pathogen.vim"
export VIM_PATHOGEN_EXTENSION_URL="https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim"
export VIM_FUGITIVE_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-fugitive"
export VIM_FUGITIVE_EXTENSION_URL="https://github.com/tpope/vim-fugitive.git"
export VIM_UNIMPAIRED_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-unimpaired"
export VIM_UNIMPAIRED_EXTENSION_URL="https://github.com/tpope/vim-unimpaired.git"
export VIM_COMMENTARY_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-commentary"
export VIM_COMMENTARY_EXTENSION_URL="https://github.com/tpope/vim-commentary.git"
export VIM_GIT_GUTTER_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-gitgutter"
export VIM_GIT_GUTTER_EXTENSION_URL="https://github.com/airblade/vim-gitgutter.git"
export VIM_BUNDLER_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-bundler"
export VIM_BUNDLER_EXTENSION_URL="https://github.com/tpope/vim-bundler"
export VIM_RUBY_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-ruby"
export VIM_RUBY_EXTENSION_URL="git://github.com/vim-ruby/vim-ruby.git"
export VIM_TEXT_OBJECT_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-textobj-user"
export VIM_TEXT_OBJECT_EXTENSION_URL="git://github.com/kana/vim-textobj-user.git"
export VIM_TEXT_OBJECT_RUBY_BLOCK_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-textobj-rubyblock"
export VIM_TEXT_OBJECT_RUBY_BLOCK_EXTENSION_URL="git://github.com/nelstrom/vim-textobj-rubyblock.git"
export VIM_RAILS_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-rails"
export VIM_RAILS_EXTENSION_URL="git://github.com/tpope/vim-rails.git"

export ATOM_APP_NAME="Atom.app"
export ATOM_APP_URL="https://atom.io/download/mac"

export ATOM_EXTENSION_ROOT="$HOME/.atom/packages"
export ATOM_CTAGS_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/atom-ctags"
export ATOM_AUTOCOMPLETE_PATHS_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/autocomplete-paths"
export ATOM_AUTOCOMPLETE_PLUS_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/autocomplete-plus"
export ATOM_COLOR_PICKER_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/color-picker"
export ATOM_DASH_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/dash"
export ATOM_EASY_MOTION_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/easy-motion"
export ATOM_EMMET_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/emmet"
export ATOM_FILE_ICONS_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/file-icons"
export ATOM_GIT_HISTORY_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/git-history"
export ATOM_GIT_PLUS_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/git-plus"
export ATOM_GIT_TAB_STATUS_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/git-tab-status"
export ATOM_INLINE_AUTOCOMPLETE_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/inline-autocomplete"
export ATOM_IPLASTIC_SYNTAX_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/iplastic-syntax"
export ATOM_KEY_PEEK_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/key-peek"
export ATOM_LINTER_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/linter"
export ATOM_LINTER_CSS_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/linter-csslint"
export ATOM_LINTER_JSHINT_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/linter-jshint"
export ATOM_LINTER_RUBOCOP_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/linter-rubocop"
export ATOM_LINTER_RUBY_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/linter-ruby"
export ATOM_LINTER_SCSS_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/linter-scss-lint"
export ATOM_LINTER_SHELL_CHECK_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/linter-shellcheck"
export ATOM_LIVE_ARCHIVE_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/live-archive"
export ATOM_LOCAL_HISTORY_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/local-history"
export ATOM_OPEN_LAST_PROJECT_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/open-last-project"
export ATOM_PAIN_SPLIT_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/pain-split"
export ATOM_PROJECT_MANAGER_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/project-manager"
export ATOM_RAILS_RSPEC_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/rails-rspec"
export ATOM_REVEAL_ACTIVE_FILE_CONTEXT_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/reveal-active-file-context"
export ATOM_RUBY_SLIM_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/ruby-slim"
export ATOM_RUBY_TEST_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/ruby-test"
export ATOM_TAB_MOVE_KEY_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/tab-move-key"
export ATOM_TODO_SHOW_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/todo-show"
export ATOM_TOGGLE_QUOTES_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/toggle-quotes"
export ATOM_TRAILING_SPACES_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/trailing-spaces"
export ATOM_VIM_MODE_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/vim-mode"
export ATOM_WRAP_LINES_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/wrap-lines"
export ATOM_YOSEMITE_UNITY_UI_EXTENSION_PATH="$ATOM_EXTENSION_ROOT/yosemite-unity-ui"

export SUBLIME_TEXT_APP_NAME="Sublime Text 2.app"
export SUBLIME_TEXT_APP_URL="http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg"

export SUBLIME_TEXT_EXTENSION_ROOT="$HOME/Library/Application Support/Sublime Text 2/Packages"
export GIT_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Git"
export GIT_EXTENSION_URL="git://github.com/kemayo/sublime-text-2-git.git"
export GIT_GUTTER_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/GitGutter"
export GIT_GUTTER_EXTENSION_URL="git://github.com/jisaacks/GitGutter.git"
export GIST_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Gist"
export GIST_EXTENSION_URL="git://github.com/condemil/Gist.git"
export KEYMAPS_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Keymaps"
export KEYMAPS_EXTENSION_URL="git://github.com/MiroHibler/sublime-keymaps.git"
export LOCAL_HISTORY_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Local History"
export LOCAL_HISTORY_EXTENSION_URL="git://github.com/vishr/local-history.git"
export CTAGS_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/CTags"
export CTAGS_EXTENSION_URL="git://github.com/SublimeText/CTags.git"
export SIDEBAR_ENHANCEMENTS_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/SideBarEnhancements"
export SIDEBAR_ENHANCEMENTS_EXTENSION_URL="git://github.com/titoBouzout/SideBarEnhancements.git"
export ADVANCED_NEW_FILE_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/AdvancedNewFile"
export ADVANCED_NEW_FILE_EXTENSION_URL="git://github.com/skuroda/Sublime-AdvancedNewFile.git"
export MOVE_TAB_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/MoveTab"
export MOVE_TAB_EXTENSION_URL="git://github.com/SublimeText/MoveTab.git"
export APPLY_SYNTAX_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/ApplySyntax"
export APPLY_SYNTAX_EXTENSION_URL="git://github.com/facelessuser/ApplySyntax.git"
export CHANGE_QUOTES_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/SublimeChangeQuotes"
export CHANGE_QUOTES_EXTENSION_URL="git://github.com/colinta/SublimeChangeQuotes.git"
export CHANGE_QUOTES_EXTENSION_OPTIONS="--branch st2"
export BRACKET_HIGHLIGHTER_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/BracketHighlighter"
export BRACKET_HIGHLIGHTER_EXTENSION_URL="git://github.com/facelessuser/BracketHighlighter.git"
export TRAILING_SPACES_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/TrailingSpaces"
export TRAILING_SPACES_EXTENSION_URL="git://github.com/SublimeText/TrailingSpaces.git"
export GUTTER_COLOR_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Gutter Color"
export GUTTER_COLOR_EXTENSION_URL="git://github.com/ggordan/GutterColor.git"
export COLOR_HIGHLIGHTER_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/ColorHighlighter"
export COLOR_HIGHLIGHTER_EXTENSION_URL="git://github.com/Monnoroch/ColorHighlighter.git"
export ALIGNMENT_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Alignment"
export ALIGNMENT_EXTENSION_URL="git://github.com/wbond/sublime_alignment.git"
export WRAP_PLUS_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/WrapPlus"
export WRAP_PLUS_EXTENSION_URL="git://github.com/ehuss/Sublime-Wrap-Plus.git"
export AUTOPREFIXER_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Autoprefixer"
export AUTOPREFIXER_EXTENSION_URL="git://github.com/sindresorhus/sublime-autoprefixer.git"
export XIKI_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/SublimeXiki"
export XIKI_EXTENSION_URL="git://github.com/lunixbochs/SublimeXiki.git"
export EASY_MOTION_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/EasyMotion"
export EASY_MOTION_EXTENSION_URL="git://github.com/tednaleid/sublime-EasyMotion.git"
export EMMET_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Emmet"
export EMMET_EXTENSION_URL="git://github.com/sergeche/emmet-sublime.git"
export EMMET_LIVE_STYLE_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/LiveStyle"
export EMMET_LIVE_STYLE_EXTENSION_URL="git://github.com/emmetio/livestyle-sublime.git"
export WEB_INSPECTOR_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Web Inspector"
export WEB_INSPECTOR_EXTENSION_URL="git://github.com/sokolovstas/SublimeWebInspector.git"
export LINTER_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/SublimeLinter"
export LINTER_EXTENSION_URL="git://github.com/SublimeLinter/SublimeLinter.git"
export RUBY_EXTRACT_METHOD_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/RubyExtractMethod"
export RUBY_EXTRACT_METHOD_EXTENSION_URL="git://github.com/pashamur/ruby-extract-method.git"
export RUBY_SLIM_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Ruby-Slim.tmbundle"
export RUBY_SLIM_EXTENSION_URL="git://github.com/slim-template/ruby-slim.tmbundle.git"
export MARKDOWN_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/sublime-markdown-extended"
export MARKDOWN_EXTENSION_URL="git://github.com/jonschlinkert/sublime-markdown-extended.git"
export SCSS_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/SCSS"
export SCSS_EXTENSION_URL="git://github.com/kuroir/SCSS.tmbundle.git"
export CSSCOMB_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/CSScomb"
export CSSCOMB_EXTENSION_URL="git://github.com/csscomb/csscomb-for-sublime.git"
export COFFEE_SCRIPT_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/CoffeeScript"
export COFFEE_SCRIPT_EXTENSION_URL="git://github.com/Xavura/CoffeeScript-Sublime-Plugin.git"
export HTML_PRETTIFY_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Sublime-HTMLPrettify"
export HTML_PRETTIFY_EXTENSION_URL="https://github.com/victorporof/Sublime-HTMLPrettify.git"
export DASH_DOC_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/DashDoc"
export DASH_DOC_EXTENSION_URL="git://github.com/farcaller/DashDoc.git"
export TABLE_EDITOR_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Table Editor"
export TABLE_EDITOR_EXTENSION_URL="https://github.com/vkocubinsky/SublimeTableEditor.git"

export SUBLIME_URL_HANDLER_APP_NAME="SublHandler.app"
export SUBLIME_URL_HANDLER_APP_URL="https://github.com/downloads/asuth/subl-handler/SublHandler.zip"

export ALFRED_APP_NAME="Alfred 2.app"
export ALFRED_APP_URL="https://cachefly.alfredapp.com/Alfred_2.6_374.zip"

export TEXTEXPANDER_APP_NAME=TextExpander.app
export TEXTEXPANDER_APP_URL="http://dl.smilesoftware.com/com.smileonmymac.textexpander/TextExpander.zip"

export PATH_FINDER_APP_NAME="Path Finder.app"
export PATH_FINDER_APP_URL="http://get.cocoatech.com/PF7.zip"

export CHROME_APP_NAME="Google Chrome.app"
export CHROME_APP_URL="https://dl.google.com/chrome/mac/stable/GGRM/googlechrome.dmg"

export CHROME_EXTENSION_ROOT="$HOME/Apps/Google/Chrome/Extensions"
export RAILS_PANEL_EXTENSION_PATH="$CHROME_EXTENSION_ROOT/RailsPanel"
export RAILS_PANEL_EXTENSION_URL="git://github.com/dejan/rails_panel.git"
export EMBER_INSPECTOR_EXTENSION_PATH="$CHROME_EXTENSION_ROOT/EmberInspector"
export EMBER_INSPECTOR_EXTENSION_URL="git://github.com/tildeio/ember-extension.git"
export CHROME_LOGGER_EXTENSION_PATH="$CHROME_EXTENSION_ROOT/ChromeLogger"
export CHROME_LOGGER_EXTENSION_URL="git://github.com/ccampbell/chromelogger.git"

export FIREFOX_APP_NAME=Firefox.app
export FIREFOX_APP_URL="https://download-installer.cdn.mozilla.net/pub/firefox/releases/34.0.5/mac/en-US/Firefox%2034.0.5.dmg"

export OPERA_APP_NAME=Opera.app
export OPERA_APP_URL="http://get.geo.opera.com.global.prod.fastly.net/pub/opera/desktop/26.0.1656.60/mac/Opera_26.0.1656.60_Setup.dmg"

export OMNIGRAFFLE_APP_NAME="OmniGraffle Professional 5.app"
export OMNIGRAFFLE_APP_URL="http://downloads2.omnigroup.com/software/MacOSX/10.6/OmniGrafflePro-5.4.4.dmg"

export TRANSMIT_APP_NAME=Transmit.app
export TRANSMIT_APP_URL="https://www.panic.com/transmit/d/Transmit%204.4.8.zip"

export ISTATS_APP_NAME="iStat Menus.app"
export ISTATS_APP_URL="http://download.bjango.com/istatmenus"

export BARTENDER_APP_NAME=Bartender.app
export BARTENDER_APP_URL="http://www.macbartender.com/Demo/Bartender.zip"

export SNIPPETS_APP_NAME=Snippets.app
export SNIPPETS_APP_URL="http://www.snippetsapp.com/download/Snippets-1.4.3.zip"

export ACORN_APP_NAME=Acorn.app
export ACORN_APP_URL="http://flyingmeat.com/download/Acorn.zip"

export DOUBLETAKE_APP_NAME=DoubleTake.app
export DOUBLETAKE_APP_URL="http://echoone.com/doubletake/DoubleTake.dmg"

export IMAGE_OPTIM_APP_NAME=ImageOptim.app
export IMAGE_OPTIM_APP_URL="http://imageoptim.com/ImageOptim.tbz2"

export VLC_APP_NAME=VLC.app
export VLC_APP_URL="http://get.videolan.org/vlc/2.1.5/macosx/vlc-2.1.5.dmg"

export PG_ADMIN_APP_NAME=pgAdmin3.app
export PG_ADMIN_APP_URL="https://ftp.postgresql.org/pub/pgadmin3/release/v1.20.0/osx/pgadmin3-1.20.0.dmg"

export PSEQUEL_APP_NAME=PSequel.app
export PSEQUEL_APP_URL="http://www.psequel.com/download"

export SEQUEL_PRO_APP_NAME="Sequel Pro.app"
export SEQUEL_PRO_APP_URL="https://sequel-pro.googlecode.com/files/sequel-pro-1.0.2.dmg"

export CHEATSHEET_APP_NAME=CheatSheet.app
export CHEATSHEET_APP_URL="http://mediaatelier.com/CheatSheet/CheatSheet_1.2.2.zip"

export OPEN_OFFICE_APP_NAME=OpenOffice.app
export OPEN_OFFICE_APP_URL="http://sourceforge.net/projects/openofficeorg.mirror/files/4.1.1/binaries/en-US/Apache_OpenOffice_4.1.1_MacOS_x86-64_install_en-US.dmg/download"

export CLOAK_APP_NAME=Cloak.app
export CLOAK_APP_URL="https://s3.amazonaws.com/static.getcloak.com/osx/updates/Release/Cloak-2.0.9.dmg"

export SCREENHERO_APP_NAME=Screenhero.app
export SCREENHERO_APP_URL="http://dl.screenhero.com/update/screenhero/Screenhero.dmg"

export VIRTUAL_BOX_APP_NAME=VirtualBox.app
export VIRTUAL_BOX_APP_URL="http://download.virtualbox.org/virtualbox/4.3.24/VirtualBox-4.3.24-98716-OSX.dmg"

export DOXIE_APP_NAME=Doxie.app
export DOXIE_APP_URL="http://www.getdoxie.com/resources/files/download_current_mac.php"

export SONOS_APP_NAME=Sonos.app
export SONOS_APP_URL="http://www.sonos.com/redir/controller_software_mac"

export APP_CLEANER_APP_NAME=AppCleaner.app
export APP_CLEANER_APP_URL="http://www.freemacsoft.net/downloads/AppCleaner_2.2.3.zip"

export HAZEL_APP_NAME=Hazel.prefPane
export HAZEL_APP_URL="http://www.noodlesoft.com/Products/Hazel/download"

export TRAILER_APP_NAME=Trailer.app
export TRAILER_APP_URL="https://github.com/ptsochantaris/trailer/releases/download/1.2.2/trailer122.zip"

export CARBON_COPY_CLONER_APP_NAME="Carbon Copy Cloner.app"
export CARBON_COPY_CLONER_APP_URL="http://c74b26775831609a3cf2-8064f6cbda3d6f2abd1c53b8bc16b17e.r26.cf5.rackcdn.com/ccc-4.0.3.3847.zip"

export QUICK_LOOK_PLAIN_TEXT_APP_NAME="QLStephen.qlgenerator"
export QUICK_LOOK_PLAIN_TEXT_APP_URL="https://github.com/downloads/whomwah/qlstephen/QLStephen.qlgenerator.zip"
