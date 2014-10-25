#!/bin/bash

# DESCRIPTION
# Sets up and launches (if necessary) installed software.

# Bash
sudo bash -c "printf '/usr/local/bin/bash' >> /etc/shells"

# Bash Completion
chsh -s /usr/local/bin/bash

# Dotfiles
git clone git://github.com/bkuhlmann/dotfiles.git
(
  cd dotfiles
  ./run.sh i
)
rm -rf dotfiles
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
git clone git://github.com/bkuhlmann/go_setup.git
(
  cd go_setup
  ./run.sh i
)
rm -rf go_setup

# NPM
git clone git://github.com/bkuhlmann/npm_setup.git
(
  cd npm_setup
  ./run.sh i
)
rm -rf npm_setup

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

# MySQL
ln -sfv /usr/local/opt/mysql/*.plist $HOME/Library/LaunchAgents
mysql_install_db --verbose --user="$(whoami)" --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp
launchctl load $HOME/Library/LaunchAgents/homebrew.mxcl.mysql.plist
/usr/local/opt/mysql/bin/mysql_secure_installation

# Google Chrome Ember Inspector
(
  cd "$EMBER_INSPECTOR_EXTENSION_PATH"
  grunt
)

# Sublime Text
if [ ! -e "/usr/bin/sublime" ]; then
  sudo ln -sv "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/bin/sublime
fi

git clone git://github.com/bkuhlmann/sublime_text.git
(
  cd sublime_text
  ./run.sh l
)
rm -rf sublime_text
