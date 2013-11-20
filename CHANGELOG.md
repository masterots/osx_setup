# v5.0.0

* Fixed bug with Bash setup script.
* Fixed bug where software setup was not performed as part of the install process.
* Removed iTerm perferences from preferences.sh.
* Removed Mouse Pointer from the README.
* Removed OmniDazzle.
* Removed SourceTree.
* Removed GitHub.
* Removed Induction.
* Removed Pastebot Sync.
* Removed the Skype application.
* Removed the Eye-Fi install.
* Removed the Billings app.
* Removed boot startup sounds.
* Updated to CheatSheet 1.2.
* Updated to TextExpander 4.1.1.
* Updated to iStatMenus 4.10.
* Updated to Firefox 25.0.
* Updated to Opera 17.0.1241.53.
* Updated to Transmit 4.4.4.
* Updated to CodeKit 8376.
* Updated to VLC 2.1.0.
* Updated to pgAdmin3 1.18.1.
* Updated to OpenOffice 4.0.1.
* Updated to VirtualBox 4.3.2.
* Updated to Hazel 3.2.1.
* Updated to OmniFocus 1.10.6.
* Updated to Dropbox v2.5.35.
* Updated to Alfred v2.1.1_227.
* Updated to iTerm v1_0_0_20131116.
* Updated the Namebench install to be a Homebrew install instead of a standard application install.
* Updated defaults to expand print panel by default.
* Updated default settings to properly echo out system updates.
* Updated Finder defaults to show path bar.
* Updated system defaults to wipe all default app icons from the dock and symlink the iOS Simulator app to the /Applications folder.
* Updated Safari defaults to load the about:blank page for faster load times.
* Updated Mail.app defaults to disable send and reploy animations.
* Updated Disk Utility defaults to enable debug mode.
* Updated Bluetooth defaults to have increased sound quality for headphones/headsets.
* Updated README post install security and privacy settings.
* Added Prepo to the README (App Store section).
* Added Dash to the README (App Store section).
* Added Keymo to the README (App Store section).
* Added Name Mangler to the README (App Store section).
* Added Kaleidoscope to the README (App Store section).
* Added Day One app to the README (App Store section).
* Added the [Kindle](http://www.amazon.com/gp/feature.html?docId=1000464931) to the README.
* Added the [Bash](https://www.gnu.org/software/bash) Homebrew install (ensures the latest version is installed).
* Added the [SSHFS](http://fuse.sourceforge.net/sshfs.html) Homebrew install.
* Added the [Tag](https://github.com/jdberry/tag) Homebrew install.
* Added the [Pipe Viewer](http://www.ivarch.com/programs/pv.shtml) Homebrew install.
* Added the [Ioping](https://code.google.com/p/ioping) Homebrew install.
* Added the [Go](http://golang.org) Homebrew install.
* Added the [Nginx](http://wiki.nginx.org) Homebrew install.
* Added the [Memcached](http://memcached.org) Homebrew install.
* Added the [Slimer.js](http://slimerjs.org) Homebrew install.
* Added the [Rubinius](http://rubini.us) rbenv install.
* Added the [JRuby](http://jruby.org) rbenv install.
* Added the [rbenv-ctags](https://github.com/tpope/rbenv-ctags) plugin.
* Added the [lnav](http://braumeister.org/formula/lnav) Homebrew install.
* Added the [Sublime Text - DashDoc](https://github.com/farcaller/DashDoc) Extension.
* Added the [Sublime Text - Wrap+](https://github.com/ehuss/Sublime-Wrap-Plus) Extension.
* Added the [Sublime Text - CSScomb](https://github.com/csscomb/csscomb-for-sublime) Extension.
* Added the [Vim Pathogen](https://github.com/tpope/vim-pathogen) extension.
* Added the [Vim Fugitive](https://github.com/tpope/vim-fugitive) extension.
* Added the [Vim Unimpaired](https://github.com/tpope/vim-unimpaired) extension.
* Added the [Vim Bundler](https://github.com/tpope/vim-bundler) extension.
* Added the [Vim Ruby](https://github.com/vim-ruby/vim-ruby) extension.
* Added the [Vim Text Object User](https://github.com/kana/vim-textobj-user) extension.
* Added the [Vim Text Object Ruby Block](https://github.com/nelstrom/vim-textobj-rubyblock) extension.
* Added the [Vim Rails](https://github.com/tpope/vim-rails) extension.
* Added the [App Cleaner](http://www.freemacsoft.net/appcleaner) install.
* Added multi-Ruby CTag support for all installed gems.
* Added Google setup steps to enable canvas inspection for dev tools.
* Added steps for enabling experimental web platform features in Chrome to the README.
* Added Bash and Bash Completion setup to the setup.sh.
* Added support for installation of a single file.
* Added OSX Mavericks bootdisk and upgrade instructions to the README.
* Added default for revealing IP address, hostname, OS version, etc. when clicking the login window clock.
* Added default for auto-restart of system if it freezed.
* Added OSX Mavericks reinstallation notes to README.

# v4.0.0

* Fixed bug with wrong disk image name for VLC DMG mount.
* Fixed typo when checking applications to say 'applications' instead of 'installs'.
* Fixed PostgreSQL and MySQL setup steps.
* Upgraded to Ruby 2.0.0-p247.
* Upgraded to iStat Menus 4.06.
* Upgraded to VLC 2.0.7.
* Upgraded to Sublime Text 2.0.2.
* Upgraded to OmniGraffle Pro 5.4.4.
* Upgraded to Skype 6.7.59.373.
* Upgraded to Alfred 2.0.7_205.
* Upgraded to Dropbox 2.0.26.
* Upgraded to Firefox 23.0.1.
* Upgraded to Opera 15.0.1147.153.
* Upgraded to SourceTree 1.6.3.1.
* Upgraded to GitHub July 18th, 2013.
* Upgraded to Espresso 2.1.3.
* Upgraded to CodeKit 8317.
* Upgraded to CheatSheet 1.1.2.
* Upgraded to OpenOffice 4.0.0.
* Upgraded to Cloak 1.2.3.
* Upgraded to Virtual Box 4.2.16-86992.
* Upgraded to Hazel 3.1.5.
* Added Marked to the App Store section of the README.
* Added the Transmit installer.
* Added Flint to the AppStore section of the README.
* Added the tmux homebrew installer: http://tmux.sourceforge.net.
* Added the GitHub Issues (ghi) homebrew install.
* Added the Parallel Homebrew install.
* Added the Sublime Text URL Handler install.
* Added the Sublime Text - Local History Extension
* Added the Sublime Text - Autoprefixer Extension
* Added the Sublime Text - SCSS Extension
* Added the Sublime Text - Emmet LiveStyle Extension
* Removed duplicate functionality from the download_only function (calls download_installer instead).
* Removed 3Hub from the README in favor of Transmit.
* Updated scripts to use sub-shells when traversing directories.
* Added a Versioning section to the README.
* Converted from RDoc to Markdown documentation.
* Cleaned up the instructions for configuring Google Chrome with better instructions for SASS source maps.
* Converted CheatSheet to an automated install since it is no longer recommended to be installed via the App Store.
* Added [Enable file system folders in Sources Panel](http://remysharp.com/2013/07/18/my-workflow-v3-full-coding-stack) to README.
* Updated README to match GitHub project description.
* Switched to brew install for rbenv-binstubs.
* Updated option for full install of default Ruby gems.

# v3.0.0

* Fixed README typo with install.sh (is now run.sh).
* Upgraded to Ruby 2.0.0-p195.
* Upgraded to Delicous Library 3.
* Upgraded to Dropbox 2.0.16.
* Upgraded to iTerm 1.0.0-20130319.
* Upgraded to Alfred 2.0.3.187.
* Upgraded to Firefox 21.0.
* Upgraded to Skype 6.4.0.
* Upgraded to Source Tree 1.6.0.1.
* Upgraded to GitHub 20147.
* Added instructions for configuring lock screen message.
* Added instructions for enabling snippets support in Chrome.
* Added default desktop background image customization.
* Added the Cloak install.
* Added the Screenhero install.
* Added the Sequel Pro install.
* Added the Sublime Text Color Highlighter extension.
* Added the Sublime Text Move Tab extension.
* Added the Sublime Text Alignment extension.
* Added the FFmpeg Homebrew install.
* Added the Wry Homebrew install.
* Renamed Move Tab, Apply Syntax, Change Quotes, Bracket Highlighter, Trailing Spaces, and Color Highlighter extension variables.
* Removed the /usr/bin path from ruby when installing Homebrew.
* Switched Google Chrome Extension install root path from ~/Cache to ~/Apps.
* Cleaned up the ruby gem and dotfile project installs to use relative paths and new install options.
* Updated shell script documentation.
* Removed the Expand Drive installer.
* Switched install order of dotfiles and ruby gem projects.
* Extracted preference install code from homebrew.sh script to separate preference.sh script.
* Added iTerm and Sublime Text preference.sh support.
* Renamed software preferences option text.
* Updated work path to use symbolic link to /tmp.
* Added setup script and associated command prompt option.
* Extracted Homebrew application setup to the setup.sh script.
* Moved application setup instructions to the setup.sh script.
* Updated script descriptions to match options prompt.

# v2.0.0

* Fixed Eye-Fi install.
* Fixed link to Sublime Text - Bracket Highlighter in README.
* Removed the Caffeine install (using the native OSX caffeinate CLI app via Alfred instead).
* Updated the dotfiles install to use the run.sh script instead of install.sh.
* Upgraded to Alfred 2.0.3_187.
* Upgraded to Opera 12.15.
* Upgraded to iStat Menus 4.05.
* Upgraded to GitHub 20134.
* Upgraded to VLC 2.0.6.
* Upgraded to Virtual Box 4.2.12-84980.
* Upgraded to Hazel 3.0.18.
* Updated installer to bypass options prompt with option choice from command line.
* Renamed install.sh to run.sh.
* Removed the Caffeine install from the App Store list (using the OSX caffeinate CLI tool now).
* Refactored all scripts in the functions folder.

# v1.3.0

* Fixed install issues with Xiki extension.
* Upgraded to Alfred 2.0.2_178.
* Upgraded to Dropbox 2.0.6.
* Upgraded to Firefox 20.0.
* Upgraded to VirtualBox 4.2.10.
* Added the Z Homebrew install.
* Added the CTags homebrew install.
* Added the rbenv-binstubs plugin install.
* Added the Sublime Text - Change Quotesextension.
* Added the Sublime Text - Sublime Linter extension.
* Added the Sublime Text - Trailing Spaces extension.
* Added the Sublime Text - Git extension.
* Added the Sublime Text - Coffee Script extension.
* Added the Sublime Text - Sidebar Enhancements.
* Added the Sublime Text - Apply Syntax extension.
* Added the Sublime Text - CTags extension.
* Added the Google Chrome - Ember Inspector extension.
* Added the Google Chrome - Chrome Logger extension.
* Added the Google Chrome Canary install.
* Added steps for Google Chrome setup.
* Added Mouse Pointer to the README. Thanks Eric.
* Fixed Eye-Fi install to download and install the package from the DMG.

# v1.2.0

* Added application extension check and installation support.
* Removed the Code Climate badge from the README.
* Added Google Chrome RailsPanel extension install.
* Added the Sublime Text 2 Web Inspector extension.
* Added the Sublime Text 2 Emmet extension.
* Added the Sublime Text 2 Xiki extension.
* Added the Sublime Text 2 Advanced New File extension.
* Added the Sublime Text 2 Gist extension.
* Added the Sublime Text 2 Bracket Highlighter extension.
* Added the Tree Homebrew install. Thanks Eric.
* Added the Source Tree application install.
* Added the Hazel application install.
* Clarified the install options documentation.
* Added additional project documentation for scripts, functions, and README.

# v1.1.0

* Upgraded to Firefox 19.0.
* Upgraded to Ruby 2.0.0-p0.
* Upgraded to iStats Menus 4.04.
* Upgraded to CodeKit 8283.
* Upgraded to Dropbox 2.0.0.
* Upgraded to Skype 6.3.0.582.
* Upgraded to Alfred 2.0.
* Updated the Google Chrome and Opera download URLs.
* Added the Wedge installer.
* Added the Silver Searcher Homebrew install.
* Added the MySQL install.
* Added GIF Brewery to the README.
* Removed the GitX install.
* Removed 'rbenv rehash' as part of the Ruby install.
* Installs Redis before the DBs.
* Added Twitter to the Apple App Store list.

# v1.0.0

* Fixed system label and name settings.
* Fixed the Homebrew install.
* Fixed the TextExpander install.
* Fixed the Path Finder install.
* Fixed the OpenOffice install.
* Fixed the Doxie install.
* Fixed permission issues with package installs and fixed the extracting of zip files for packakge install.
* Upgraded to Ruby 1.9.3-p385.
* Upgraded to Dropbox 1.6.16.
* Upgraded to Knox 2.2.0.
* Upgraded to iTerm2 1_0_0_20130122.
* Upgraded to TextExpander 4.0.5.
* Upgraded to Firefox 18.0.2.
* Upgraded to Opera 12.14.
* Upgraded to iStat Menus 4.03.
* Upgraded to GitHub 107.
* Upgraded to Snippets 1.4.1.
* Upgraded to Espresso 2.0.5.
* Upgraded to CodeKit 8248.
* Upgraded to VLC 2.0.5.
* Upgraded to PGAdmin 1.16.1.
* Upgraded to Open Office 3.4.1.
* Upgraded to VirtualBox 4.2.6-82870.
* Upgraded to Billings 376.
* Upgraded to Skype 6.2.0.1117.
* Upgraded to Alfred 1.3.2_265.
* Defaults - Enable keyboard access for all controls.
* Defaults - Don’t show Dashboard as a Space.
* Defaults - Hide the Time Machine and Volume icons by default.
* Defaults - Save to disk (not iCloud) by default.
* Defaults - Automatically quit printer app once the print jobs complete by default.
* Defaults - Disable automatic termination of inactive apps by default.
* Defaults - Applied better low light keyboard illumination defaults.
* Defaults - Grouped all the finder defaults together.
* Defaults - Show hidden files in Finder by default.
* Defaults - Show status bar, full POSIX path, and list views in Finder by default.
* Defaults - Grouped Dock options together and removed hot corner defaults.
* Defaults - Grouped Safari defaults and improved default settings for debugging purposes.
* Defaults - Enabled Address Book and iCal debug menus by default.
* Defaults - Added TextEdit defaults.
* Defaults - Cleaned up default setting groupings.
* Defaults - Removed Battery and Clock from menu, show only Bluetooth and Airport instead.
* Added the rbenv-gem-rehash Homebrew install.
* Added the rbenv-default-gems Homebrew install.
* Added the rbenv-vars Homebrew install.
* Added the GitX install.
* Added the Bartender install.
* Added the Namebench install.
* Added quiet option to unzip operations.
* Added install options prompt.
* Added file existence check to downloads.
* Added the functions.sh script.
* Added the clean_work_path function.
* Added preference pane install support.
* Added functions for getting install root, install path, and file extension.
* Added verify_install function.
* Added UTF8 support to PostgreSQL install.
* Added Boxen to the README.
* Updated the Ruby Gem Setup project install.
* Replaced ~ with $HOME in scripts.
* Moved all settings into a single file.
* Renamed run.sh to install.sh.
* Prefixed all *URL, *FILE, and *NAME variables with APP for better dynamic lookup.
* Separated the Homebrew and application install scripts.
* Quoted all install parameters to prevent issues with spaces.
* Converted iStats Menus to an install instead of download only.
* Cleaned up install and download messages for already installed/downloaded apps.
* Renamed installers.sh to functions.sh.
* Conditionally symbolic link Sublime Text 2 binary if it doesn't exist.
* Refactored mounting/unmounting of disk images into separate functions.
* Removed PostgreSQL version dependency.
* Removed Redis version dependency.
* Removed the brew update command from install actions.
* Removed the ImageAlpha installer.
* Removed Growl and Firefox (setup) from README.
* Removed the GitBox mention from the README.

# v0.4.0

* Upgraded to Sublime Text 2.0.1.
* Upgraded to iStat Menus 3.24.
* Upgraded to Alfred 1.3.1_261.
* Upgraded to pgAdmin 1.16.0.
* Upgraded to Dropbox 1.6.5.
* Upgraded to OmniFocus 1.10.4
* Upgraded to OmniOutliner 3.10.6.
* Upgraded to OmniGraffle 5.4.2.
* Upgraded to OmniDazzle 1.2.
* Upgraded to PathFinder 6.1.2.
* Upgraded to Firefox 18.0.
* Upgraded to Skype 6.1.59.2295.
* Upgraded to Ruby 1.9.3-p374.
* Added Moom to the App Store section of the README.
* Added Cocoa JSON Editor to the App Store section of the README.
* Added the Eye-Fi installer.
* Added pigz brew installer.
* Added the jq installer.
* Added the network grep install.
* Added the Phantom.js brew install.
* Added installer for the Bartender app.
* Added install for the Induction app.
* Added Homebrew installer for bash-completion.
* Added the rbenv-vars installer and template (with Ruby GC settings).
* Added the rbenv-gem-rehash installer.
* Added defaults that disable the Chrome print dialog.
* Added Code Climate support.
* Removed jsonpp.
* Converted/detailed the CONTRIBUTING guidelines per GitHub requirements.
* Modified the dotfiles installer to use shell script instead of ruby script.
* Moved default install after software installation.

# v0.3.0

* Upgraded the OmniFocus installer.
* Upgraded the Firefox installer.
* Upgraded OmniGraffle installer.
* Upgraded Skype installer.
* Upgraded to TextExpander 4.0 and moved installer from App Store to automated script install.
* Upgraded to Sublime Text 2, Version 2.0.
* Added the Namebench install.
* Added CheatSheet to the App Store README list.
* Added Cobook to the App Store README list.
* Added JSON pretty print installer via HomeBrew.
* Added AquaPath app to README.
* Cleaned up the README.

# v0.2.0

* Fixed PostgreSQL install steps.
* Fixed Redis install steps.
* Fixed the Air Display download.
* Fixed README typo and extra forward slash in VLC URL.
* Fixed iTerm file type and switched to iTerm beta download.
* Fixed work path for install_tar_app function.
* Fixed mount points and quoted them to account for paths with spaces.
* Fixed mention of run.sh in README.
* Upgraded to Ruby 1.9.3-p194.
* Added rbenv rehash after default Ruby global setup.
* Switched to sourcing the ~/.bashrc script after the dotfiles project install.
* Added Sublime Text 2 setup for the CLI.
* Updated the Redis version.
* Added the Doxie installer.
* Added the Caffeine install since it appears to no longer be provided via the App Store.
* Added Homebrew formulas to README.
* Added the list of apps and post-install steps to the README.
* Removed tar install verbosity.
* Removed duplicate ExpanDrive install.
* Added no finder reveal option to hdiutil attach.
* Removed the brew bash installer.
* Removed the GCC installer and added requirements for Xcode and Xcode command line tools.
* Removed Growl Notify formula since it no longer exists.
* Added bash functions for downloading and installing packages.
* Added install instructions for software that isn't in the App Store to the README.
* Added more OSX defaults and credited Mathias Bynens for his work in the README.

# v0.1.0

* Initial version.
