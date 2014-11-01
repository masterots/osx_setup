#!/bin/bash

# DESCRIPTION
# Sets up and launches (if necessary) installed software.

# Bash
sudo bash -c "printf '/usr/local/bin/bash' >> /etc/shells"

# Bash Completion
chsh -s /usr/local/bin/bash

# Dotfiles
install_git_project "git://github.com/bkuhlmann/dotfiles.git" "dotfiles" "./run.sh i"
source $HOME/.bashrc

# rbenv
mkdir -p $HOME/.rbenv && cp settings/rbenv-vars.txt $HOME/.rbenv/vars
for ruby in $MRI $RUBINIUS $JRUBY; do
  (
    rbenv shell $ruby
    gem ctags
  )
done

# Ruby
git clone git://github.com/bkuhlmann/ruby_setup.git
(
  cd ruby_setup
  for ruby in $MRI $RUBINIUS $JRUBY; do
    rbenv shell $ruby
    ./run.sh i
  done
)
rm -rf ruby_setup

# Go
install_git_project "git://github.com/bkuhlmann/go_setup.git" "go_setup" "./run.sh i"

# NPM
install_git_project "git://github.com/bkuhlmann/npm_setup.git" "npm_setup" "./run.sh i"

# Nginx
ln -sfv /usr/local/opt/nginx/*.plist $HOME/Library/LaunchAgents
launchctl load $HOME/Library/LaunchAgents/homebrew.mxcl.nginx.plist

# Memcached
ln -sfv /usr/local/opt/memcached/*.plist $HOME/Library/LaunchAgents
launchctl load $HOME/Library/LaunchAgents/homebrew.mxcl.memcached.plist

# Redis
ln -sfv /usr/local/opt/redis/*.plist $HOME/Library/LaunchAgents
launchctl load $HOME/Library/LaunchAgents/homebrew.mxcl.redis.plist

# PostgreSQL
ln -sfv /usr/local/opt/postgresql/*.plist $HOME/Library/LaunchAgents
initdb /usr/local/var/postgres -E utf8
launchctl load $HOME/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

# Pow
curl get.pow.cx | sh

# Google Chrome Ember Inspector
(
  cd "$EMBER_INSPECTOR_EXTENSION_PATH"
  grunt
)

# Sublime Text
if [ ! -e "/usr/bin/sublime" ]; then
  sudo ln -sv "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
fi
install_git_project "git://github.com/bkuhlmann/sublime_text.git" "sublime_text" "./run.sh i"
