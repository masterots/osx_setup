#!/bin/bash

# DESCRIPTION
# Sets up and launches (if necessary) installed software.

# Bash
sudo bash -c "echo '/usr/local/bin/bash' >> /etc/shells"

# Bash Completion
chsh -s /usr/local/bin/bash

# SSHFS
sudo /bin/cp -rfX /usr/local/Cellar/fuse4x-kext/0.9.2/Library/Extensions/fuse4x.kext /Library/Extensions
sudo chmod +s /Library/Extensions/fuse4x.kext/Support/load_fuse4x

# rbenv
mkdir -p $HOME/.rbenv && cp settings/rbenv-vars.txt $HOME/.rbenv/vars
for ruby in ${RUBIES[@]}; do
  (
    rbenv shell $ruby
    gem ctags
  )
done

# Nginx
ln -sfv /usr/local/opt/nginx/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist

# Memcached
ln -sfv /usr/local/opt/memcached/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist

# Redis
cp /usr/local/Cellar/redis/*/homebrew.mxcl.redis.plist $HOME/Library/LaunchAgents
launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.redis.plist

# PostgreSQL
cp /usr/local/Cellar/postgresql/*/homebrew.mxcl.postgresql.plist $HOME/Library/LaunchAgents
launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
initdb /usr/local/var/postgres -E utf8

# MySQL
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.mysql.plist
mysql_install_db --verbose --user="$(whoami)" --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp
/usr/local/opt/mysql/bin/mysql_secure_installation

# Sublime Text
if [ ! -e "/usr/bin/sublime" ]; then
  sudo ln -sv "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/bin/sublime
fi

# Google Chrome Ember Inspector
(
  cd "$EMBER_INSPECTOR_EXTENSION_PATH"
  npm install
  npm install -g grunt-cli
  grunt
)
