#!/bin/sh

# DESCRIPTION
# Installs Homebrew software.

# EXECUTION
# Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Bash Completion
brew install bash-completion

# tmux
brew install tmux

# Z
brew install z

# Tree
brew install tree

# Git
brew install git

# GitHub
brew install hub

# GitHub Issues
brew install ghi

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

# rbenv
brew install rbenv
brew install --HEAD ruby-build
brew install rbenv-gem-rehash
brew install rbenv-default-gems
brew install rbenv-vars
mkdir -p $HOME/.rbenv/plugins
git clone https://github.com/ianheggie/rbenv-binstubs.git $HOME/.rbenv/plugins/rbenv-binstubs
rbenv install $RUBY_VERSION
rbenv global $RUBY_VERSION

# Pow
curl get.pow.cx | sh

# Redis
brew install redis

# PostgreSQL
brew install postgresql

# MySQL
brew install mysql

# Wry
brew install wry
