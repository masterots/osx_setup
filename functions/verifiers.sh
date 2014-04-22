#!/bin/bash

# DESCRIPTION
# Defines verification/validation functions.

# Verifies the install exists.
# Parameters:
# $1 = The file name.
function verify_install() {
  local file_name="$1" # Make the parameter easier to read.

  # Display the missing install if not found.
  local install_path=$(get_install_path "$file_name")
  if [[ ! -e "$install_path" ]]; then
    echo " - Missing: $file_name"
  fi
}
export -f verify_install

# Checks for missing installs suffixed by "APP_NAME" as defined in settings.sh.
function verify_installs() {
  echo "\nChecking applications..."

  # Only use environment variables that end with "APP_NAME".
  local file_names=$(set | awk -F "=" '{print $1}' | grep ".*APP_NAME")

  # For each application name, check to see if the application is installed. Otherwise, skip.
  for name in $file_names; do
    # Evaluate/extract the key (name) value and pass it on for verfication.
    verify_install "$(eval echo \$$name)"
  done

  echo "Install check complete."
}
export -f verify_installs

# Verifies path exists.
# Parameters:
# $1 = The path.
function verify_path() {
  local path="$1" # Make the parameter easier to read.

  # Display the missing path if not found.
  if [[ ! -e "$path" ]]; then
    echo " - Missing: $path"
  fi
}
export -f verify_path

# Checks for missing extensions suffixed by "EXTENSION_PATH" as defined in settings.sh.
function verify_extensions() {
  echo "\nChecking extensions..."

  # Only use environment variables that end with "EXTENSION_PATH".
  local extensions=$(set | awk -F "=" '{print $1}' | grep ".*EXTENSION_PATH")

  # For each extension, check to see if the extension is installed. Otherwise, skip.
  for extension in $extensions; do
    # Evaluate/extract the key (extension) value and pass it on for verfication.
    verify_path "$(eval echo \$$extension)"
  done

  echo "Extension check complete."
}
export -f verify_extensions
