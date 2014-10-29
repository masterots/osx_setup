#!/bin/bash

# DESCRIPTION
# Defines uninstall functions.

# Uninstalls selected application.
function uninstall_application() {
  # Only use environment keys that end with "APP_NAME".
  local keys=($(set | awk -F "=" '{print $1}' | grep ".*APP_NAME"))

  printf "Select application to uninstall:\n"
  for ((index = 0; index < ${#keys[*]}; index++)); do
    local app_file="${keys[$index]}"
    printf "  $index: ${!app_file}\n"
  done
  printf "  q: Quit/Exit\n\n"

  read -p "Enter selection: " response
  printf "\n"

  local regex="^[0-9]+$"
  if [[ $response =~ $regex ]]; then
    local app_file="${keys[$response]}"
    local app_path=$(get_install_path "${!app_file}")
    rm -rf "$app_path"
    printf "Uninstalled: ${app_path}\n"
  fi
}
export -f uninstall_application
