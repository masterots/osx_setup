#!/bin/sh

# DESCRIPTION
# Defines global settings.

# SETTINGS
# General
export SYSTEM_LABEL=RA # Placeholder for system display name.
export SYSTEM_NAME=ra # Placeholder for system name.
export WORK_PATH=/tmp/downloads # Temporary location for processing of file downloads and installers.

# Ruby
export MRI=2.1.0
export RUBINIUS=rbx-2.1.1
export JRUBY=jruby-1.7.6
export RUBIES=($MRI $RUBINIUS $JRUBY)

# Applications

export DROPBOX_APP_URL=https://d1ilhw0800yew8.cloudfront.net/client
export DROPBOX_APP_FILE=Dropbox%202.6.2.dmg
export DROPBOX_APP_NAME=Dropbox.app

export KNOX_APP_URL=https://d13itkw33a7sus.cloudfront.net/dist/K
export KNOX_APP_FILE=Knox-2.2.0.zip
export KNOX_APP_NAME=Knox.app

export ITERM_APP_URL=http://www.iterm2.com/downloads/beta
export ITERM_APP_FILE=iTerm2-1_0_0_20131116.zip
export ITERM_APP_NAME=iTerm.app

export VIM_EXTENSION_ROOT="$HOME/.vim/bundle"
export VIM_PATHOGEN_EXTENSION_URL="https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim"
export VIM_PATHOGEN_EXTENSION_PATH="$HOME/.vim/autoload/pathogen.vim"
export VIM_FUGITIVE_EXTENSION_URL="https://github.com/tpope/vim-fugitive.git"
export VIM_FUGITIVE_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-fugitive"
export VIM_UNIMPAIRED_EXTENSION_URL="https://github.com/tpope/vim-unimpaired.git"
export VIM_UNIMPAIRED_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-unimpaired"
export VIM_COMMENTARY_EXTENSION_URL="https://github.com/tpope/vim-commentary.git"
export VIM_COMMENTARY_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-commentary"
export VIM_GIT_GUTTER_EXTENSION_URL="https://github.com/airblade/vim-gitgutter.git"
export VIM_GIT_GUTTER_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-gitgutter"
export VIM_BUNDLER_EXTENSION_URL="https://github.com/tpope/vim-bundler"
export VIM_BUNDLER_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-bundler"
export VIM_RUBY_EXTENSION_URL="git://github.com/vim-ruby/vim-ruby.git"
export VIM_RUBY_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-ruby"
export VIM_TEXT_OBJECT_EXTENSION_URL="git://github.com/kana/vim-textobj-user.git"
export VIM_TEXT_OBJECT_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-textobj-user"
export VIM_TEXT_OBJECT_RUBY_BLOCK_EXTENSION_URL="git://github.com/nelstrom/vim-textobj-rubyblock.git"
export VIM_TEXT_OBJECT_RUBY_BLOCK_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-textobj-rubyblock"
export VIM_RAILS_EXTENSION_URL="git://github.com/tpope/vim-rails.git"
export VIM_RAILS_EXTENSION_PATH="$VIM_EXTENSION_ROOT/vim-rails"

export SUBLIME_TEXT_APP_URL=http://c758482.r82.cf2.rackcdn.com
export SUBLIME_TEXT_APP_FILE=Sublime%20Text%202.0.2.dmg
export SUBLIME_TEXT_APP_NAME="Sublime Text 2.app"
export SUBLIME_TEXT_EXTENSION_ROOT="$HOME/Library/Application Support/Sublime Text 2/Packages"
export GIT_EXTENSION_URL="git://github.com/kemayo/sublime-text-2-git.git"
export GIT_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Git"
export GIT_GUTTER_EXTENSION_URL="git://github.com/jisaacks/GitGutter.git"
export GIT_GUTTER_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/GitGutter"
export GIST_EXTENSION_URL="git://github.com/condemil/Gist.git"
export GIST_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Gist"
export LOCAL_HISTORY_EXTENSION_URL="git://github.com/vishr/local-history.git"
export LOCAL_HISTORY_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Local History"
export CTAGS_EXTENSION_URL="git://github.com/SublimeText/CTags.git"
export CTAGS_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/CTags"
export SIDEBAR_ENHANCEMENTS_EXTENSION_URL="git://github.com/titoBouzout/SideBarEnhancements.git"
export SIDEBAR_ENHANCEMENTS_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/SideBarEnhancements"
export ADVANCED_NEW_FILE_EXTENSION_URL="git://github.com/skuroda/Sublime-AdvancedNewFile.git"
export ADVANCED_NEW_FILE_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/AdvancedNewFile"
export MOVE_TAB_EXTENSION_URL="git://github.com/SublimeText/MoveTab.git"
export MOVE_TAB_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/MoveTab"
export APPLY_SYNTAX_EXTENSION_URL="git://github.com/facelessuser/ApplySyntax.git"
export APPLY_SYNTAX_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/ApplySyntax"
export CHANGE_QUOTES_EXTENSION_URL="git://github.com/colinta/SublimeChangeQuotes.git"
export CHANGE_QUOTES_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/SublimeChangeQuotes"
export CHANGE_QUOTES_EXTENSION_OPTIONS="--branch st2"
export BRACKET_HIGHLIGHTER_EXTENSION_URL="git://github.com/facelessuser/BracketHighlighter.git"
export BRACKET_HIGHLIGHTER_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/BracketHighlighter"
export TRAILING_SPACES_EXTENSION_URL="git://github.com/SublimeText/TrailingSpaces.git"
export TRAILING_SPACES_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/TrailingSpaces"
export COLOR_HIGHLIGHTER_EXTENSION_URL="git://github.com/Monnoroch/ColorHighlighter.git"
export COLOR_HIGHLIGHTER_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/ColorHighlighter"
export ALIGNMENT_EXTENSION_URL="git://github.com/wbond/sublime_alignment.git"
export ALIGNMENT_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Alignment"
export WRAP_PLUS_EXTENSION_URL="git://github.com/ehuss/Sublime-Wrap-Plus.git"
export WRAP_PLUS_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/WrapPlus"
export AUTOPREFIXER_EXTENSION_URL="git://github.com/sindresorhus/sublime-autoprefixer.git"
export AUTOPREFIXER_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Autoprefixer"
export XIKI_EXTENSION_URL="git://github.com/lunixbochs/SublimeXiki.git"
export XIKI_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/SublimeXiki"
export EASY_MOTION_EXTENSION_URL="git://github.com/tednaleid/sublime-EasyMotion.git"
export EASY_MOTION_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/EasyMotion"
export EMMET_EXTENSION_URL="git://github.com/sergeche/emmet-sublime.git"
export EMMET_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Emmet"
export EMMET_LIVE_STYLE_EXTENSION_URL="git://github.com/emmetio/livestyle-sublime.git"
export EMMET_LIVE_STYLE_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/LiveStyle"
export WEB_INSPECTOR_EXTENSION_URL="git://github.com/sokolovstas/SublimeWebInspector.git"
export WEB_INSPECTOR_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Web Inspector"
export LINTER_EXTENSION_URL="git://github.com/SublimeLinter/SublimeLinter.git"
export LINTER_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/SublimeLinter"
export SCSS_EXTENSION_URL="git://github.com/kuroir/SCSS.tmbundle.git"
export SCSS_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/SCSS"
export CSSCOMB_EXTENSION_URL="git://github.com/csscomb/csscomb-for-sublime.git"
export CSSCOMB_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/CSScomb"
export COFFEE_SCRIPT_EXTENSION_URL="git://github.com/Xavura/CoffeeScript-Sublime-Plugin.git"
export COFFEE_SCRIPT_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/CoffeeScript"
export HTML_PRETTIFY_EXTENSION_URL="https://github.com/victorporof/Sublime-HTMLPrettify.git"
export HTML_PRETTIFY_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/Sublime-HTMLPrettify"
export DASH_DOC_EXTENSION_URL="git://github.com/farcaller/DashDoc.git"
export DASH_DOC_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/DashDoc"

export SUBLIME_URL_HANDLER_APP_URL=https://github.com/downloads/asuth/subl-handler
export SUBLIME_URL_HANDLER_APP_FILE=SublHandler.zip
export SUBLIME_URL_HANDLER_APP_NAME="SublHandler.app"

export ALFRED_APP_URL=http://cachefly.alfredapp.com
export ALFRED_APP_FILE=Alfred_2.1.1_227.zip
export ALFRED_APP_NAME="Alfred 2.app"

export TEXTEXPANDER_APP_URL=http://cdn.smilesoftware.com
export TEXTEXPANDER_APP_FILE=TextExpander_4.2.1.zip
export TEXTEXPANDER_APP_NAME=TextExpander.app

export PATH_FINDER_APP_URL=http://get.cocoatech.com
export PATH_FINDER_APP_FILE=PF6_LION.zip
export PATH_FINDER_APP_NAME="Path Finder.app"

export CHROME_APP_URL=https://dl.google.com/chrome/mac/stable/GGRM
export CHROME_APP_FILE=googlechrome.dmg
export CHROME_APP_NAME="Google Chrome.app"
export CHROME_EXTENSION_ROOT="$HOME/Apps/Google/Chrome/Extensions"
export RAILS_PANEL_EXTENSION_URL="git://github.com/dejan/rails_panel.git"
export RAILS_PANEL_EXTENSION_PATH="$CHROME_EXTENSION_ROOT/RailsPanel"
export EMBER_INSPECTOR_EXTENSION_URL="git://github.com/tildeio/ember-extension.git"
export EMBER_INSPECTOR_EXTENSION_PATH="$CHROME_EXTENSION_ROOT/EmberInspector"
export CHROME_LOGGER_EXTENSION_URL="git://github.com/ccampbell/chromelogger.git"
export CHROME_LOGGER_EXTENSION_PATH="$CHROME_EXTENSION_ROOT/ChromeLogger"

export CANARY_APP_URL=https://storage.googleapis.com/chrome-canary
export CANARY_APP_FILE=GoogleChromeCanary.dmg
export CANARY_APP_NAME="Google Chrome Canary.app"

export FIREFOX_APP_URL=http://download-installer.cdn.mozilla.net/pub/firefox/releases/26.0/mac/en-US
export FIREFOX_APP_FILE=Firefox%2026.0.dmg
export FIREFOX_APP_NAME=Firefox.app

export OPERA_APP_URL=http://get.geo.opera.com/pub/opera/desktop/18.0.1284.68/mac
export OPERA_APP_FILE=Opera_18.0.1284.68_Setup.dmg
export OPERA_APP_NAME=Opera.app

export OMNIFOCUS_APP_URL=http://downloads2.omnigroup.com/software/MacOSX/10.6
export OMNIFOCUS_APP_FILE=OmniFocus-1.10.6.dmg
export OMNIFOCUS_APP_NAME=OmniFocus.app

export OMNIGRAFFLE_APP_URL=http://downloads2.omnigroup.com/software/MacOSX/10.6
export OMNIGRAFFLE_APP_FILE=OmniGrafflePro-5.4.4.dmg
export OMNIGRAFFLE_APP_NAME="OmniGraffle Professional 5.app"

export TRANSMIT_APP_URL=https://www.panic.com/transmit/d
export TRANSMIT_APP_FILE=Transmit%204.4.5.zip
export TRANSMIT_APP_NAME=Transmit.app

export ISTATS_APP_URL=http://s3.amazonaws.com/bjango/files/istatmenus4
export ISTATS_APP_FILE=istatmenus4.10.zip
export ISTATS_APP_NAME="iStat Menus.app"

export BARTENDER_APP_URL=http://www.macbartender.com/Demo
export BARTENDER_APP_FILE=Bartender.zip
export BARTENDER_APP_NAME=Bartender.app

export SNIPPETS_APP_URL=http://www.snippetsapp.com/download
export SNIPPETS_APP_FILE=Snippets-1.4.3.zip
export SNIPPETS_APP_NAME=Snippets.app

export CODEKIT_APP_URL=http://incident57.com/codekit/files
export CODEKIT_APP_FILE=codekit-8403.zip
export CODEKIT_APP_NAME=CodeKit.app

export ACORN_APP_URL=http://flyingmeat.com/download
export ACORN_APP_FILE=Acorn.zip
export ACORN_APP_NAME=Acorn.app

export DOUBLETAKE_APP_URL=http://echoone.com/doubletake
export DOUBLETAKE_APP_FILE=DoubleTake.dmg
export DOUBLETAKE_APP_NAME=DoubleTake.app

export IMAGE_OPTIM_APP_URL=http://imageoptim.com
export IMAGE_OPTIM_APP_FILE=ImageOptim.tbz2
export IMAGE_OPTIM_APP_NAME=ImageOptim.app

export VLC_APP_URL=https://get.videolan.org/vlc/2.1.2/macosx
export VLC_APP_FILE=vlc-2.1.2.dmg
export VLC_APP_NAME=VLC.app

export PG_ADMIN_APP_URL=http://ftp.postgresql.org/pub/pgadmin3/release/v1.18.1/osx
export PG_ADMIN_APP_FILE=pgadmin3-1.18.1.dmg
export PG_ADMIN_APP_NAME=pgAdmin3.app

export SEQUEL_PRO_APP_URL=https://sequel-pro.googlecode.com/files
export SEQUEL_PRO_APP_FILE=sequel-pro-1.0.2.dmg
export SEQUEL_PRO_APP_NAME="Sequel Pro.app"

export MONEYWELL_APP_URL=http://downloads.nothirst.com
export MONEYWELL_APP_FILE=MoneyWell_17.zip
export MONEYWELL_APP_NAME=MoneyWell.app

export DELICIOUS_LIBRARY_APP_URL=http://www.delicious-monster.com/downloads
export DELICIOUS_LIBRARY_APP_FILE=DeliciousLibrary3.zip
export DELICIOUS_LIBRARY_APP_NAME="Delicious Library 3.app"

export CHEATSHEET_APP_URL=http://mediaatelier.com/CheatSheet
export CHEATSHEET_APP_FILE=CheatSheet_1.2.zip
export CHEATSHEET_APP_NAME=CheatSheet.app

export OPEN_OFFICE_APP_URL=http://hivelocity.dl.sourceforge.net/project/openofficeorg.mirror/4.0.1/binaries/en-US
export OPEN_OFFICE_APP_FILE=Apache_OpenOffice_4.0.1_MacOS_x86_install_en-US.dmg
export OPEN_OFFICE_APP_NAME=OpenOffice.app

export CLOAK_APP_URL=https://s3.amazonaws.com/static.getcloak.com/osx/updates/Release
export CLOAK_APP_FILE=Cloak-1.2.3.dmg
export CLOAK_APP_NAME=Cloak.app

export SCREENHERO_APP_URL=http://dl.screenhero.com/update/screenhero
export SCREENHERO_APP_FILE=Screenhero.dmg
export SCREENHERO_APP_NAME=Screenhero.app

export COLLOQUY_APP_URL=http://colloquy.info/downloads
export COLLOQUY_APP_FILE=colloquy-latest.zip
export COLLOQUY_APP_NAME=Colloquy.app

export WEDGE_APP_URL=http://wedge.natestedman.com/release
export WEDGE_APP_FILE=Wedge.app.zip
export WEDGE_APP_NAME=Wedge.app

export VIRTUAL_BOX_APP_URL=http://download.virtualbox.org/virtualbox/4.3.6
export VIRTUAL_BOX_APP_FILE=VirtualBox-4.3.6-91406-OSX.dmg
export VIRTUAL_BOX_APP_NAME=VirtualBox.app

export DOXIE_APP_URL=http://www.getdoxie.com/resources/files
export DOXIE_APP_FILE=Doxie.dmg
export DOXIE_APP_NAME=Doxie.app

export APP_CLEANER_APP_URL=http://www.freemacsoft.net/downloads
export APP_CLEANER_APP_FILE=AppCleaner_2.2.1.zip
export APP_CLEANER_APP_NAME=AppCleaner.app

export AIR_DISPLAY_APP_URL=http://avatron.com/downloads
export AIR_DISPLAY_APP_FILE=AirDisplayInstaller.zip
export AIR_DISPLAY_APP_NAME="Air Display Host.app"

export HAZEL_APP_URL=https://s3.amazonaws.com/Noodlesoft
export HAZEL_APP_FILE=Hazel-3.2.3.dmg
export HAZEL_APP_NAME=Hazel.prefPane

export TRAILER_APP_URL=http://dev.housetrip.com/trailer
export TRAILER_APP_FILE=trailer108.zip
export TRAILER_APP_NAME=Trailer.app

export CCMENU_APP_URL=http://softlayer-dal.dl.sourceforge.net/project/ccmenu/CCMenu/1.6.4
export CCMENU_APP_FILE=ccmenu-1.6.4-b.dmg
export CCMENU_APP_NAME=CCMenu.app
