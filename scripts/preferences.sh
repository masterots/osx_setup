#!/bin/bash

# DESCRIPTION
# Applies software preferences.

# EXECUTION
# Dotfiles
git clone git://github.com/bkuhlmann/dotfiles.git
(
  cd dotfiles
  ./run.sh i
)
rm -rf dotfiles
source $HOME/.bashrc

# Ruby Gems
git clone git://github.com/bkuhlmann/ruby_gem_setup.git
(
  cd ruby_gem_setup

  for ruby in ${RUBIES[@]}; do
    rbenv shell $ruby
    ./run.sh i
  done
)
rm -rf ruby_gem_setup

# NPM Packages
git clone git://github.com/bkuhlmann/npm_setup.git
(
  cd npm_setup
  ./run.sh i
)
rm -rf npm_setup

# Sublime Text
git clone git://github.com/bkuhlmann/sublime_text.git
(
  cd sublime_text
  ./run.sh l
)
rm -rf sublime_text
