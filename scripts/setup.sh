#!/bin/bash

# DESCRIPTION
# Sets up and launches (if necessary) installed software.

# Bash
sudo bash -c "printf '/usr/local/bin/bash\n' >> /etc/shells"

# Bash Completion
chsh -s /usr/local/bin/bash

# rbenv
export PATH="/usr/local/bin:$PATH"
eval "$(rbenv init -)"
mkdir -p $HOME/.rbenv && cp settings/rbenv-vars.txt $HOME/.rbenv/vars
for ruby in $MRI $RUBINIUS $JRUBY; do
  rbenv install $ruby
done
rbenv global $MRI

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

# PostgreSQL
initdb /usr/local/var/postgres -E utf8
launch_process "/usr/local/opt/postgresql/homebrew.mxcl.postgresql.plist"

# Nginx
launch_process "/usr/local/opt/nginx/homebrew.mxcl.nginx.plist"

# Memcached
launch_process "/usr/local/opt/memcached/homebrew.mxcl.memcached.plist"

# Redis
launch_process "/usr/local/opt/redis/homebrew.mxcl.redis.plist"

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

# Dotfiles
rm -f $HOME/.bash_profile
install_git_project "git://github.com/bkuhlmann/dotfiles.git" "dotfiles" "./run.sh i"
source $HOME/.bashrc
