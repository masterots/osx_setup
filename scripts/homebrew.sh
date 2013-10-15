#!/bin/sh

# DESCRIPTION
# Installs Homebrew software.

# EXECUTION
# Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Bash
brew install bash

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

# Parallel
brew install parallel

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
brew install rbenv-vars
brew install rbenv-binstubs
brew install rbenv-gem-rehash
brew install rbenv-default-gems
rbenv install $RUBY_VERSION
rbenv global $RUBY_VERSION

# Nginx
brew install nginx

# Pow
curl get.pow.cx | sh

# Memcached
brew install memcached

# Redis
brew install redis

# PostgreSQL
brew install postgresql

# MySQL
brew install mysql

# Wry
brew install wry
