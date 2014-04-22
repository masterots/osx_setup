#!/bin/bash

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./run.sh OPTION

# SETTINGS
source settings/settings.sh

# FUNCTIONS
source functions/utilities.sh
source functions/installers.sh
source functions/verifiers.sh
source functions/options.sh

# EXECUTION
while true; do
  if [[ $# == 0 ]]; then
    printf "\nUsage: run OPTION\n"
    printf "\nOSX Options:\n"
    printf "  b: Apply basic system settings.\n"
    printf "  h: Install Homebrew software (i.e. non-GUI, command line interfaces).\n"
    printf "  a: Install application software (i.e. GUI-enabled).\n"
    printf "  x: Install application extensions (i.e. enhancements, add-ons, plug-ins, etc.)\n"
    printf "  d: Apply system and application defaults.\n"
    printf "  p: Apply software preferences.\n"
    printf "  s: Setup installed software.\n"
    printf "  w: Clean work directory.\n"
    printf "  i: Perform complete install (i.e. executes all options, listed above, top to bottom).\n"
    printf "  c: Check status of installed applications and extensions.\n"
    printf "  q: Quit/Exit.\n\n"
    read -p "Enter selection: " response
    printf "\n"
    process_option $response
  else
    process_option $1
  fi
done
