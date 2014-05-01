#!/bin/bash

# DESCRIPTION
# Sets up and launches (if necessary) installed software.

# Bash
sudo bash -c "printf '/usr/local/bin/bash' >> /etc/shells"

# Bash Completion
chsh -s /usr/local/bin/bash

# SSHFS
sudo /bin/cp -RfX /usr/local/Cellar/osxfuse/2.6.4/Library/Filesystems/osxfusefs.fs /Library/Filesystems
sudo chmod +s /Library/Filesystems/osxfusefs.fs/Support/load_osxfusefs

# rbenv
mkdir -p $HOME/.rbenv && cp settings/rbenv-vars.txt $HOME/.rbenv/vars
for ruby in $MRI $RUBINIUS $JRUBY; do
  (
    rbenv shell $ruby
    gem ctags
  )
done

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

# Sublime Text
if [ ! -e "/usr/bin/sublime" ]; then
  sudo ln -sv "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/bin/sublime
fi

# Google Chrome Ember Inspector
(
  cd "$EMBER_INSPECTOR_EXTENSION_PATH"
  grunt
)
