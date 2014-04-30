#!/bin/bash

# DESCRIPTION
# Installs Homebrew software.

# EXECUTION
# Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
export PATH="/usr/local/bin:$PATH"
printf "export PATH=\"/usr/local/bin:$PATH\"\n" >> $HOME/.bash_profile

# Readline
brew install readline

# OpenSSL
brew install openssl
brew link openssl --force

# Bash
brew install bash

# Bash Completion
brew install bash-completion

# SSHFS
brew install sshfs

# tmux
brew install tmux
brew install reattach-to-user-namespace

# Mosh
brew install mobile-shell

# Z
brew install z

# Tree
brew install tree

# hr
brew install hr

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

# FLAC
brew install flac

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
brew install rbenv-ctags

# Temporary [patch](https://schwartzmeyer.com/2014/04/26/building-ruby-2-0-0-and-2-1-1-on-os-x) for MRI due to Readline 6.3.3 issue.
curl https://gist.githubusercontent.com/andschwa/11334511/raw/563d5c2efb869cafb0c65404d12243822bba2817/ruby-2.1.1-readline.patch | rbenv install --patch $MRI

for ruby in $RUBINIUS $JRUBY; do
  rbenv install $ruby
done
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

# cloc
brew install cloc
