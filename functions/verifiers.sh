#!/bin/bash

# DESCRIPTION
# Defines verification/validation functions.

# Verifies application exists.
# Parameters:
# $1 = The file name.
function verify_application() {
  local file_name="$1" # Make the parameter easier to read.

  # Display the missing install if not found.
  local install_path=$(get_install_path "$file_name")

  if [[ ! -e "$install_path" ]]; then
    printf " - Missing: $file_name\n"
  fi
}
export -f verify_application

# Checks for missing applications suffixed by "APP_NAME" as defined in settings.sh.
function verify_applications() {
  printf "Checking applications...\n"

  # Only use environment keys that end with "APP_NAME".
  local file_names=$(set | awk -F "=" '{print $1}' | grep ".*APP_NAME")

  # For each application name, check to see if the application is installed. Otherwise, skip.
  for name in $file_names; do
    # Pass the key value to verfication.
    verify_application "${!name}"
  done

  printf "Install check complete.\n"
}
export -f verify_applications

# Verifies path exists.
# Parameters:
# $1 = The path.
function verify_path() {
  local path="$1" # Make the parameter easier to read.

  # Display the missing path if not found.
  if [[ ! -e "$path" ]]; then
    printf " - Missing: $path\n"
  fi
}
export -f verify_path

# Checks for missing extensions suffixed by "EXTENSION_PATH" as defined in settings.sh.
function verify_extensions() {
  printf "\nChecking extensions...\n"

  # Only use environment keys that end with "EXTENSION_PATH".
  local extensions=$(set | awk -F "=" '{print $1}' | grep ".*EXTENSION_PATH")

  # For each extension, check to see if the extension is installed. Otherwise, skip.
  for extension in $extensions; do
    # Evaluate/extract the key (extension) value and pass it on for verfication.
    verify_path "${!extension}"
  done

  printf "Extension check complete.\n"
}
export -f verify_extensions
