#!/bin/sh

# DESCRIPTION
# Defines general utility functions.

# Answers the file name.
# Parameters:
# $1 = The file path.
function get_file_name() {
  echo "${1##*/}" # Answer file or directory name.
}
export -f get_file_name

# Answers the file extension.
# Parameters:
# $1 = The file name.
function get_file_extension() {
  echo "${1##*.}" # Answer the suffix (without the dot).
}
export -f get_file_extension

# Answers the root install path for file name.
# Parameters:
# $1 = The file name.
function get_install_root() {
  file_name="$1" # Make the parameter easier to read.
  file_extension=$(get_file_extension "$file_name")

  # Dynamically build the install path based on file extension.
  case $file_extension in
    'app')
      install_path="/Applications";;
    'prefPane')
      install_path="/Library/PreferencePanes";;
  esac

  # Return the install path.
  echo "$install_path"
}
export -f get_install_root

# Answers the full install path (including file name) for file name.
# Parameters:
# $1 = The file name.
function get_install_path() {
  file_name="$1" # Make the parameter easier to read.
  install_path=$(get_install_root "$file_name")
  echo "$install_path/$file_name"
}
export -f get_install_path

# Cleans work path for temporary processing of installs.
function clean_work_path() {
  echo "Cleaning: $WORK_PATH..."
  rm -rf "$WORK_PATH"
}
export -f clean_work_path
