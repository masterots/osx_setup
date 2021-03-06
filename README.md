# Overview

[![Gittip](http://img.shields.io/gittip/bkuhlmann.svg)](https://www.gittip.com/bkuhlmann)

Shell scripts for automated OSX machine setup.

# Features

- Provides a command line interface for installation and management of OSX software.
- Downloads, installs, and configures [Homebrew](http://brew.sh) command line software:
    - [Readline](http://tiswww.case.edu/php/chet/readline/rltop.html)
    - [OpenSSL](https://openssl.org)
    - [Bash](https://www.gnu.org/software/bash)
    - [Bash Completion](http://bash-completion.alioth.debian.org)
    - [ShellCheck](https://github.com/koalaman/shellcheck)
    - [tmux](http://tmux.sourceforge.net)
    - [Mosh](http://mosh.mit.edu)
    - [Reattach to User Namespace](https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard)
    - [Z](https://github.com/rupa/z)
    - [Tree](http://mama.indstate.edu/users/ice/tree)
    - [hr](https://github.com/LuRsT/hr)
    - [Git](http://git-scm.com)
    - [Mecurial](http://mercurial.selenic.com)
    - [Hub](https://github.com/defunkt/hub)
    - [GHI](https://github.com/stephencelis/ghi)
    - [CTags](http://ctags.sourceforge.net)
    - [Tag](https://github.com/jdberry/tag)
    - [Parallel](https://savannah.gnu.org/projects/parallel)
    - [Pigz](http://www.zlib.net/pigz)
    - [jq](http://stedolan.github.com/jq)
    - [The Silver Surfer](https://github.com/ggreer/the_silver_searcher)
    - [Pipe Viewer](http://www.ivarch.com/programs/pv.shtml)
    - [Ioping](https://code.google.com/p/ioping)
    - [Network Grep](http://ngrep.sourceforge.net)
    - [Namebench](https://code.google.com/p/namebench)
    - [ImageMagick](http://www.imagemagick.org)
    - [Graphviz](http://www.graphviz.org)
    - [FLAC](https://www.xiph.org/flac)
    - [FFmpeg](http://ffmpeg.org)
    - [Node.js](http://nodejs.org)
    - [Phantom.js](http://phantomjs.org)
    - [rbenv](https://github.com/sstephenson/rbenv)
    - [rbenv-build](https://github.com/sstephenson/ruby-build)
    - [rbenv-vars](https://github.com/sstephenson/rbenv-vars)
    - [rbenv-ctags](https://github.com/tpope/rbenv-ctags)
    - [Ruby](http://www.ruby-lang.org)
    - [Rubinius](http://rubini.us)
    - [JRuby](http://jruby.org)
    - [Go](http://golang.org)
    - [Peco](https://github.com/peco/peco)
    - [Nginx](http://wiki.nginx.org)
    - [Pow](http://pow.cx)
    - [Memcached](http://memcached.org)
    - [Redis](http://redis.io)
    - [PostgreSQL](http://www.postgresql.org)
    - [Wry](https://github.com/hoop33/wry)
    - [lnav](http://braumeister.org/formula/lnav)
    - [cloc](http://cloc.sourceforge.net)
    - [Mackup](https://github.com/lra/mackup)
    - [Terminal Notifier](https://github.com/alloy/terminal-notifier)
- Downloads, installs, and configures software applications generally not in the [App Store](http://www.apple.com/macosx/whats-new/app-store.html):
    - [Dropbox](https://www.dropbox.com)
    - [Knox](https://agilebits.com/knox)
    - [iTerm2](http://www.iterm2.com)
    - [Atom](https://atom.io)
    - [Sublime Text 2](http://www.sublimetext.com/2)
    - [Sublime Text 2 URL Handler](https://github.com/asuth/subl-handler)
    - [Alfred](http://www.alfredapp.com)
    - [TextExpander](http://www.smilesoftware.com/TextExpander)
    - [Path Finder](http://cocoatech.com)
    - [Firefox](http://www.mozilla.com/en-US/firefox)
    - [Google Chrome](http://www.google.com/chrome)
    - [Opera](http://www.opera.com)
    - [OmniGraffle](http://www.omnigroup.com/applications/omnigraffle)
    - [Transmit](https://panic.com/transmit)
    - [iStat Menus](http://bjango.com/apps/istatmenus)
    - [Bartender](http://www.macbartender.com)
    - [Snippets](http://www.snippetsapp.com)
    - [Acorn](http://flyingmeat.com/acorn)
    - [DoubleTake](http://echoone.com/doubletake)
    - [ImageOptim](http://imageoptim.pornel.net)
    - [VLC](http://www.videolan.org/vlc)
    - [pgAdmin](http://www.pgadmin.org/index.php)
    - [PSequel](http://www.psequel.com)
    - [Sequel Pro](http://www.sequelpro.com)
    - [Cheatsheet](http://www.cheatsheetapp.com/CheatSheet)
    - [OpenOffice](http://www.openoffice.org)
    - [Cloak](https://www.getcloak.com)
    - [Screenhero](http://screenhero.com)
    - [VirtualBox](https://www.virtualbox.org)
    - [Doxie](http://www.getdoxie.com)
    - [Sonos](http://www.sonos.com)
    - [App Cleaner](http://www.freemacsoft.net/appcleaner)
    - [Hazel](http://www.noodlesoft.com/hazel.php)
    - [Trailer](http://ptsochantaris.github.io/trailer)
    - [Carbon Copy Cloner](http://www.bombich.com)
    - [QuickLook Plain Text](https://github.com/whomwah/qlstephen)
- Downloads, installs, and configures software extensions:
    - [Vim Pathogen](https://github.com/tpope/vim-pathogen)
    - [Vim Fugitive](https://github.com/tpope/vim-fugitive)
    - [Vim Unimpaired](https://github.com/tpope/vim-unimpaired)
    - [Vim Commentary](https://github.com/tpope/vim-commentary)
    - [Vim Git Gutter](https://github.com/airblade/vim-gitgutter)
    - [Vim Bundler](https://github.com/tpope/vim-bundler)
    - [Vim Ruby](https://github.com/vim-ruby/vim-ruby)
    - [Vim Text Object User](https://github.com/kana/vim-textobj-user)
    - [Vim Text Object Ruby Block](https://github.com/nelstrom/vim-textobj-rubyblock)
    - [Vim Rails](https://github.com/tpope/vim-rails)
    - [Sublime Text 2 Git](https://github.com/kemayo/sublime-text-2-git)
    - [Sublime Text 2 Git Gutter](https://github.com/jisaacks/GitGutter)
    - [Sublime Text 2 Gist](https://github.com/condemil/Gist)
    - [Sublime Text 2 Keymaps](https://github.com/MiroHibler/sublime-keymaps)
    - [Sublime Text 2 Local History](https://github.com/vishr/local-history)
    - [Sublime Text 2 CTags](https://github.com/SublimeText/CTags)
    - [Sublime Text 2 Sidebar Enhancements](https://github.com/titoBouzout/SideBarEnhancements)
    - [Sublime Text 2 Advanced New File](https://github.com/skuroda/Sublime-AdvancedNewFile)
    - [Sublime Text 2 Move Tab](https://github.com/SublimeText/MoveTab)
    - [Sublime Text 2 Apply Syntax](https://github.com/facelessuser/ApplySyntax)
    - [Sublime Text 2 Change Quotes](https://github.com/colinta/SublimeChangeQuotes)
    - [Sublime Text 2 Bracket Highlighter](https://github.com/facelessuser/BracketHighlighter)
    - [Sublime Text 2 Trailing Spaces](https://github.com/SublimeText/TrailingSpaces)
    - [Sublime Text 2 Gutter Color](https://github.com/ggordan/GutterColor)
    - [Sublime Text 2 Color Highlighter](https://github.com/Monnoroch/ColorHighlighter)
    - [Sublime Text 2 Alignment](https://github.com/wbond/sublime_alignment)
    - [Sublime Text 2 Wrap+](https://github.com/ehuss/Sublime-Wrap-Plus)
    - [Sublime Text 2 Autoprefixer](https://github.com/sindresorhus/sublime-autoprefixer)
    - [Sublime Text 2 Xiki](https://github.com/lunixbochs/SublimeXiki)
    - [Sublime Text 2 Easy Motion](https://github.com/tednaleid/sublime-EasyMotion)
    - [Sublime Text 2 Emmet](http://emmet.io)
    - [Sublime Text 2 Emmet LiveStyle](http://livestyle.emmet.io)
    - [Sublime Text 2 Web Inspector](http://sokolovstas.github.com/SublimeWebInspector)
    - [Sublime Text 2 Sublime Linter](https://github.com/SublimeLinter/SublimeLinter)
    - [Sublime Text 2 Ruby Extract Method](https://github.com/pashamur/ruby-extract-method)
    - [Sublime Text 2 Ruby Slim](https://github.com/slim-template/ruby-slim.tmbundle)
    - [Sublime Text 2 Markdown Extended](https://github.com/jonschlinkert/sublime-markdown-extended)
    - [Sublime Text 2 SCSS](https://github.com/MarioRicalde/SCSS.tmbundle/tree/SublimeText2)
    - [Sublime Text 2 CSScomb](https://github.com/csscomb/csscomb-for-sublime)
    - [Sublime Text 2 Coffee Script](https://github.com/Xavura/CoffeeScript-Sublime-Plugin)
    - [Sublime Text 2 HTML Prettify](https://github.com/victorporof/Sublime-HTMLPrettify)
    - [Sublime Text 2 DashDoc](https://github.com/farcaller/DashDoc)
    - [Sublime Text 2 Table Editor](https://github.com/vkocubinsky/SublimeTableEditor)
    - [Atom Project Manager](https://atom.io/packages/project-manager)
    - [Atom Git+](https://atom.io/packages/git-plus)
    - [Atom Vim Mode](https://atom.io/packages/vim-mode)
    - [Atom Ruby Test](https://atom.io/packages/ruby-test)
    - [Atom CTags](https://atom.io/packages/atom-ctags)
    - [Atom Autocomplete Paths](https://atom.io/packages/autocomplete-paths)
    - [Atom Autocomplete Plus](https://atom.io/packages/autocomplete-plus)
    - [Atom Color Picker](https://atom.io/packages/color-picker)
    - [Atom Dash](https://atom.io/packages/dash)
    - [Atom Easy Motion](https://atom.io/packages/easy-motion)
    - [Atom Emmet](https://atom.io/packages/emmet)
    - [Atom IPlastic Syntax](https://atom.io/packages/iplastic-syntax)
    - [Atom Linter](https://atom.io/packages/linter)
    - [Atom Linter (CSS)](https://atom.io/packages/linter-csslint)
    - [Atom Linter (JSHint)](https://atom.io/packages/linter-jshint)
    - [Atom Linter (Rubocop)](https://atom.io/packages/linter-rubocop)
    - [Atom Linter (Ruby)](https://atom.io/packages/linter-ruby)
    - [Atom Linter (SCSS)](https://atom.io/packages/linter-scss-lint).
    - [Atom Linter(ShellCheck)](https://atom.io/packages/linter-shellcheck)
    - [Atom Local HIstory](https://atom.io/packages/local-history)
    - [Atom Rails RSpec](https://atom.io/packages/rails-rspec)
    - [Atom Reveal Active File Context](https://atom.io/packages/reveal-active-file-context)
    - [Atom Ruby Slim](https://atom.io/packages/ruby-slim)
    - [Atom Tab Move Key](https://atom.io/packages/tab-move-key)
    - [Atom Toggle Quotes](https://atom.io/packages/toggle-quotes)
    - [Atom Trailing Spaces](https://atom.io/packages/trailing-spaces)
    - [Atom Wrap Lines](https://atom.io/packages/wrap-lines)
    - [Atom Yosemite Unity UI](https://atom.io/packages/yosemite-unity-ui)
    - [Atom Open Last Project](https://atom.io/packages/open-last-project)
    - [Atom TODO Show](https://atom.io/packages/todo-show)
    - [Atom Pain Split](https://atom.io/packages/pain-split)
    - [Atom Inline Autocomplete](https://atom.io/packages/inline-autocomplete)
    - [Atom File Icons](https://atom.io/packages/file-icons)
    - [Atom Git Tab Status](https://atom.io/packages/git-tab-status)
    - [Atom Git History](https://atom.io/packages/git-history)
    - [Atom Key Peek](https://atom.io/packages/key-peek)
    - [Atom Live Archive](https://atom.io/packages/live-archive)
    - [Google Chrome Rails Panel](https://github.com/dejan/rails_panel)
    - [Google Chrome Ember Inspector](https://github.com/tildeio/ember-extension)
    - [Google Chrome Chrome Logger](https://github.com/ccampbell/chromelogger)

# Requirements

0. [OSX](http://www.apple.com/osx)
0. [OSX Software Updates](http://www.apple.com/osx)
0. [Xcode](https://developer.apple.com/downloads) (with accepted license agreement)
0. [Command Line Tools for Xcode](https://developer.apple.com/downloads)
0. [Java SE Development Kit](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)

# OSX Yosemite Bootdisk

0. Insert a USB drive (8GB or higher is best).
0. Open Disk Utility and format the USB drive (leave the label as "Untitled").
0. Download OSX Yosemite via the App Store but *DO NOT INSTALL*.
0. Run this command to turn the USB drive into bootable image:

        sudo "/Applications/Install OS X Yosemite.app/Contents/Resources/createinstallmedia" --volume /Volumes/Untitled --applicationpath "/Applications/Install OS X Yosemite.app" --nointeraction
0. Exit the OSX Yosemite install.
0. Eject the USB drive.

# OSX Yosemite Upgrade

0. Insert the USB bootdisk into the machine to be upgraded.
0. Reboot the machine.
0. Hold down the OPTION key while the machine is rebooting.
0. Select the USB bootdisk from the menu.
0. Format the machine using Disk Utility.
0. Install the new OS.

# OSX Yosemite Reinstall

If you have already installed OSX but want to reinstall it, simply reboot the machine and hold down CONTROL+R.
This will load the installer from the recovery partition and allow you to use Disk Utility, reinstall the system, etc.

# Setup

Open a terminal window and execute one of the following setup sequences depending on your version preference:

Current Version (stable):

    git clone git://github.com/bkuhlmann/osx.git
    cd osx
    git checkout v9.2.0

Master Version (unstable):

    git clone git://github.com/bkuhlmann/osx.git
    cd osx

# Usage

Edit any of the *.sh files in the `scripts` folder to your liking and then open a terminal window to execute the
following command:

    ./run.sh

Running the run.sh script will present the following options:

    Install:
      b: Apply basic system settings.
      h: Install Homebrew software.
      a: Install application software.
      x: Install application extensions.
      d: Apply software defaults.
      s: Setup and configure installed software.
      w: Clean work directory.
      i: Install everything (i.e. executes all options, listed above, top to bottom).
    Manage:
      c: Check status of managed software.
      C: Caffeinate machine.
      A: Uninstall application software.
      X: Uninstall application extension.
      q: Quit/Exit.

Choose option 'i' to run all install tasks or select a specific option to run a single task. Each task is designed to
be re-run if necessary. This can also be handy for performing upgrades, re-running a missing/failed install, etc.

The options prompt can be skipped by passing the desired option directly to the run.sh script. For example, executing
"./run.sh i" will execute the complete software install process.

It is recommended that the machine be rebooted after all install tasks have completed. Feel free to delete the osx
project directory afterwards...or keep it around for future upgrades.

## Customization

While the default settings for this project are opinionated and tailored for my specific setup, you can easily fork
this project and customize the settings to your specific environment. Start by editing the files located in the
settings project:

- settings/settings.sh = Defines settings for machine name, applications, extensions, versions, paths, etc.

*TIP*: The installer determines which applications/extensions to install as defined by the settings.sh script.
Applications defined with the "APP_NAME" suffix and extensions defined with the "EXTENSION_PATH" suffix inform
the installer what to care about. Removing/commenting out these applications/extensions within the settings.sh file
will cause the installer to skip these applications/extensions.

You can also modify the install scripts themselves by editing any of the following:

- scripts/basic.sh = Applies basic system settings.
- scripts/homebrew.sh = Installs Homebrew, command line, software.
- scripts/applications.sh = Installs OSX, GUI-based, applications.
- scripts/extensions.sh = Installs application extensions.
- scripts/defaults.sh = Applies system and application defaults.
- scripts/setup.sh = Configures and launches (if necessary) installed software.

All Bash functions, used by the scripts defined above, can be found in the functions folder.

# App Store Software

I also recommend installing the following software found via the
[App Store](http://www.apple.com/macosx/whats-new/app-store.html):

- [DaisyDisk](http://www.daisydiskapp.com)
- [Keymo](http://manytricks.com/keymo)
- [Moom](http://manytricks.com/moom)
- [1Password](http://agilewebsolutions.com/products/1Password)
- [Fantastical](http://flexibits.com/fantastical)
- [Dash](http://kapeli.com/dash)
- [PDFpenPro](http://www.smilesoftware.com/PDFpenPro/index.html)
- [Marked](http://markedapp.com)
- [OmniOutliner](http://www.omnigroup.com/applications/omnioutliner)
- [OmniFocus](http://www.omnigroup.com/applications/omnifocus)
- [Patterns](http://krillapps.com/patterns)
- [ColorSnapper](http://colorsnapper.com)
- [Gradient](http://www.gradientapp.com)
- [xScope](http://iconfactory.com/software/xscope)
- [Ember](http://realmacsoftware.com/ember)
- [Pixelmator](http://www.pixelmator.com)
- [Sketch](http://bohemiancoding.com/sketch)
- [GIF Brewery](http://www.helloresolven.com/portfolio/gifbrewery)
- [Prepo](http://wearemothership.com/work/prepo)
- [Name Mangler](http://manytricks.com/namemangler)
- [Kaleidoscope](http://www.kaleidoscopeapp.com)
- [Paw](http://luckymarmot.com/paw)
- [Cocoa JSON Editor](http://www.cocoajsoneditor.com)
- [AquaPath](http://ditchnet.org/aquapath)
- [Day One](http://dayoneapp.com)
- [Kindle](http://www.amazon.com/gp/feature.html?docId=1000464931)
- [iMovie](http://www.apple.com/ilife/imovie)
- [iPhoto](http://www.apple.com/ilife/iphoto)
- [GarageBand](http://www.apple.com/ilife/garageband)
- [CCMenu](http://ccmenu.sourceforge.net)
- [WiFi Explorer](http://www.adriangranados.com/apps/wifi-explorer)
- [MoneyWell](http://nothirst.com/moneywell)
- [Deliveries](http://junecloud.com/software/mac/deliveries.html)
- [Slack](https://slack.com)
- [Twitter](https://itunes.apple.com/us/app/twitter/id409789998?mt=12)

# Miscellaneous Software

The following software is optional:

- [Hardware IO Tools for Xcode](https://developer.apple.com/downloads) - Includes the Network Link Conditioner, etc.
- [VMWare Fusion](http://www.vmware.com/products/fusion) (requires a registered account, download only)
- [Logitech Harmony Remote](https://support.logitech.com/en_us/product/harmony-890-advanced-universal-remote)

# Post Install Checklist

The following is a checklist of additional steps worth completing after the scripts have been executed:

- Configure Security & Privacy:
    - Require password immediately after sleep or screen saver begins.
    - Show a message when the screen is locked. Example: `<twitter> | <email> | <phone> | <url>`
    - Enable FileVault.
- Configure iCloud:
    - Enable Find My Mac.
- Configure Wi-Fi.
- Configure printer.
- Configure scanner.
- Configure Internet Accounts.
- Configure Contacts.
- Configure Calendar.
- Configure Google Chrome:
    - Open the Flags tab (i.e. chrome://flags)
        - Enable "Experimental Extension APIs".
        - Enable "Developer Tools Experiments".
        - Enable "Enable experimental Web Platform features".
    - Open Web Inspector Developer Tools (COMMAND+OPTION+I) and click the gear (lower right corner)
        - Click the Experiments tab.
            - Enable "FileSystem inspection".
            - Enable "Canvas inspection."
        - Click the General tab.
            - Enable "CSS Source maps".
                - Enable "Auto-reload generated CSS".
    - Open the Settings tab (i.e. chrome:://settings)
        - Passwords and Forms
            - Disable "Enable Autofill to fill out web forms in a single click".
            - Disable "Offer to save your web passwords".
- Configure previously installed applications.

# Resources

- [Mathias Bynens' OSX Defaults](https://github.com/mathiasbynens/dotfiles/blob/master/.osx) - OSX/application defaults.

# Versioning

Read [Semantic Versioning](http://semver.org) for details. Briefly, it means:

- Patch (x.y.Z) - Incremented for small, backwards compatible bug fixes.
- Minor (x.Y.z) - Incremented for new, backwards compatible public API enhancements and/or bug fixes.
- Major (X.y.z) - Incremented for any backwards incompatible public API changes.

# Code of Conduct

Please note that this project is released with a [CODE OF CONDUCT](CODE_OF_CONDUCT.md). By participating in this project
you agree to abide by its terms.

# Contributions

Read [CONTRIBUTING](CONTRIBUTING.md) for details.

# License

Copyright (c) 2012 [Alchemists](https://www.alchemists.io).
Read the [LICENSE](LICENSE.md) for details.

# History

Read the [CHANGELOG](CHANGELOG.md) for details.
Built with [Gemsmith](https://github.com/bkuhlmann/gemsmith).

# Credits

Developed by [Brooke Kuhlmann](https://www.alchemists.io) at [Alchemists](https://www.alchemists.io)
