#!/bin/sh

# DESCRIPTION
# Applies software preferences.

# EXECUTION
# Dotfiles
git clone git://github.com/bkuhlmann/dotfiles.git
cd dotfiles
./run.sh i
cd ..
rm -rf dotfiles
source $HOME/.bashrc

# Ruby Gems
git clone git://github.com/bkuhlmann/ruby_gem_setup.git
cd ruby_gem_setup
./run.sh i
./run.sh g
cd ..
rm -rf ruby_gem_setup

# iTerm
git clone git://github.com/bkuhlmann/iterm.git
cd iterm
./run.sh i
cd ..
rm -rf iterm

# Sublime Text
git clone git://github.com/bkuhlmann/sublime_text.git
cd sublime_text
./run.sh l
cd ..
rm -rf sublime_text
