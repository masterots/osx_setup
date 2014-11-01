#!/bin/bash

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./run.sh OPTION

# SETTINGS
source settings/settings.sh

# FUNCTIONS
source functions/installers.sh
source functions/options.sh
source functions/uninstallers.sh
source functions/utilities.sh
source functions/verifiers.sh

# EXECUTION
while true; do
  if [[ $# == 0 ]]; then
    printf "\nUsage: run OPTION\n"
    printf "\nOSX Options:\n"
    printf "  Install:\n"
    printf "    b: Apply basic system settings.\n"
    printf "    h: Install Homebrew software.\n"
    printf "    a: Install application software.\n"
    printf "    x: Install application extensions.\n"
    printf "    d: Apply software defaults.\n"
    printf "    s: Setup installed software.\n"
    printf "    w: Clean work directory.\n"
    printf "    i: Perform complete install (i.e. executes all options, listed above, top to bottom).\n"
    printf "  Manage:\n"
    printf "    c: Check status of managed software.\n"
    printf "    C: Caffeinate machine.\n"
    printf "    A: Uninstall application software.\n"
    printf "    X: Uninstall application extension.\n"
    printf "    q: Quit/Exit.\n\n"
    read -p "Enter selection: " response
    printf "\n"
    process_option $response
  else
    process_option ${1:-}
  fi
done
