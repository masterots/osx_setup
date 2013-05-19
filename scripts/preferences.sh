#!/bin/sh

# DESCRIPTION
# Installs custom preferences.

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
