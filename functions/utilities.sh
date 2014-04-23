#!/bin/bash

# DESCRIPTION
# Defines general utility functions.

# Answers the file name.
# Parameters:
# $1 = The file path.
function get_file_name() {
  printf "${1##*/}" # Answer file or directory name.
}
export -f get_file_name

# Answers the file extension.
# Parameters:
# $1 = The file name.
function get_file_extension() {
  printf "${1##*.}" # Answer the suffix (without the dot).
}
export -f get_file_extension

# Answers the root install path for file name.
# Parameters:
# $1 = The file name.
function get_install_root() {
  local file_name="$1" # Make the parameter easier to read.
  local file_extension=$(get_file_extension "$file_name")

  # Dynamically build the install path based on file extension.
  case $file_extension in
    'app')
      local install_path="/Applications";;
    'prefPane')
      local install_path="/Library/PreferencePanes";;
  esac

  # Return the install path.
  printf "$install_path\n"
}
export -f get_install_root

# Answers the full install path (including file name) for file name.
# Parameters:
# $1 = The file name.
function get_install_path() {
  local file_name="$1" # Make the parameter easier to read.
  local install_path=$(get_install_root "$file_name")
  printf "$install_path/$file_name\n"
}
export -f get_install_path

# Cleans work path for temporary processing of installs.
function clean_work_path() {
  printf "Cleaning: $WORK_PATH...\n"
  rm -rf "$WORK_PATH"
}
export -f clean_work_path
