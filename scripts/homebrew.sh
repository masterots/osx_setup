#!/bin/bash

# DESCRIPTION
# Installs Homebrew software.

# EXECUTION
# Homebrew
if ! command -v brew > /dev/null; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  export PATH="/usr/local/bin:$PATH"
  printf "export PATH=\"/usr/local/bin:$PATH\"\n" >> $HOME/.bash_profile
fi

# Readline
brew install readline

# OpenSSL
brew install openssl
brew link openssl --force

# Bash
brew install bash

# Bash Completion
brew install bash-completion

# asciinema
brew install asciinema

# ShellCheck
brew install shellcheck

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

# Mercurial
brew install hg

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

# Gifsicle
brew install gifsicle

# Node
brew install node

# IO.js
brew install iojs

# Phantom.js
brew install phantomjs

# rbenv
brew install rbenv
brew install ruby-build
brew install rbenv-vars
brew install rbenv-ctags

# Go
brew install go

# Peco
brew tap peco/peco
brew install peco

# Nginx
brew install nginx

# Memcached
brew install memcached

# Redis
brew install redis

# PostgreSQL
brew install postgresql

# Wry
brew install wry

# lnav
brew install lnav

# cloc
brew install cloc

# Mackup
brew install mackup

# Terminal Notifier
brew install terminal-notifier
