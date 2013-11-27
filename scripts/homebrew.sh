#!/bin/sh

# DESCRIPTION
# Installs Homebrew software.

# EXECUTION
# Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"

# Bash
brew install bash

# Bash Completion
brew install bash-completion

# SSHFS
brew install sshfs

# tmux
brew install tmux
brew install reattach-to-user-namespace

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

# Tag
brew install tag

# Parallel
brew install parallel

# Pigz
brew install pigz

# JSON CLI Parser
brew install jq

# The Silver Searcher
brew install the_silver_searcher

# Pipe Viewer
brew install pv

# Ioping
brew install ioping

# Network Grep
brew install ngrep

# Namebench
brew install namebench

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

# Slimer.js
brew install slimerjs

# rbenv
brew install rbenv
brew install --HEAD ruby-build
brew install rbenv-vars
brew install rbenv-binstubs
brew install rbenv-gem-rehash
brew install rbenv-default-gems
git clone git://github.com/tpope/rbenv-ctags.git $HOME/.rbenv/plugins/rbenv-ctags
rbenv install $MRI
rbenv install $RUBINIUS
rbenv install $JRUBY
rbenv global $MRI

# Go
brew install go

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

# lnav
brew install lnav
