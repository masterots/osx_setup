#!/bin/sh

# DESCRIPTION
# Defines command line prompt options.

# Process option selection.
# Parameters:
# $1 = The option to process.
function process_option() {
  case $1 in
    'b')
      scripts/basic.sh
      break;;
    'h')
      scripts/homebrew.sh
      break;;
    'a')
      scripts/applications.sh
      break;;
    'x')
      scripts/extensions.sh
      break;;
    'd')
      scripts/defaults.sh
      break;;
    'p')
      scripts/preferences.sh
      break;;
    's')
      scripts/setup.sh
      break;;
    'w')
      clean_work_path
      break;;
    'i')
      scripts/basic.sh
      scripts/homebrew.sh
      scripts/applications.sh
      scripts/extensions.sh
      scripts/defaults.sh
      scripts/preferences.sh
      clean_work_path
      break;;
    'c')
      verify_installs
      verify_extensions
      break;;
    'q')
      break;;
  esac
}
export -f process_option
