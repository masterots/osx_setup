#!/bin/sh

# DESCRIPTION
# Defines, installs, and configures Homebrew command line interface software.

# EXECUTION
# Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Bash Completion
brew install bash-completion

# Z
brew install z

# Tree
brew install tree

# Git
brew install git

# GitHub
brew install hub

# CTags
brew install ctags

# Pigz
brew install pigz

# JSON CLI Parser
brew install jq

# The Silver Searcher
brew install the_silver_searcher

# Network Grep
brew install ngrep

# ImageMagick
brew install imagemagick

# Graphviz
brew install graphviz

# FFmpeg
brew install ffmpeg

# Node
brew install node

# Phantom.js
brew install phantomjs

# Ruby
brew install rbenv
brew install --HEAD ruby-build
brew install rbenv-gem-rehash
brew install rbenv-default-gems
brew install rbenv-vars
cp settings/rbenv-vars.txt $HOME/.rbenv/vars
mkdir -p $HOME/.rbenv/plugins
git clone https://github.com/ianheggie/rbenv-binstubs.git $HOME/.rbenv/plugins/rbenv-binstubs
rbenv install $RUBY_VERSION
rbenv global $RUBY_VERSION
rbenv rehash

# Ruby Gems
git clone git://github.com/bkuhlmann/ruby_gem_setup.git
ruby_gem_setup/run.sh i
ruby_gem_setup/run.sh g
rm -rf ruby_gem_setup

# Dotfiles
git clone git://github.com/bkuhlmann/dotfiles.git
dotfiles/run.sh i
rm -rf dotfiles
source $HOME/.bashrc

# Pow
curl get.pow.cx | sh

# Redis
brew install redis
cp /usr/local/Cellar/redis/*/homebrew.mxcl.redis.plist $HOME/Library/LaunchAgents/
launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.redis.plist

# PostgreSQL
brew install postgresql
initdb /usr/local/var/postgres -E utf8
cp /usr/local/Cellar/postgresql/*/homebrew.mxcl.postgresql.plist $HOME/Library/LaunchAgents
launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

# MySQL
brew install mysql
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp
/usr/local/opt/mysql/bin/mysql_secure_installation

# Wry
brew install wry
