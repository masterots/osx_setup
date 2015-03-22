#!/bin/bash

# DESCRIPTION
# Defines command line prompt options.

# Process option selection.
# Parameters:
# $1 = The option to process.
process_option() {
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
    's')
      scripts/setup.sh
      break;;
    'w')
      clean_work_path
      break;;
    'i')
      caffeinate_machine
      scripts/basic.sh
      scripts/homebrew.sh
      scripts/applications.sh
      scripts/extensions.sh
      scripts/defaults.sh
      scripts/setup.sh
      clean_work_path
      break;;
    'c')
      verify_homebrews
      verify_applications
      verify_extensions
      break;;
    'C')
      caffeinate_machine
      break;;
    'A')
      uninstall_application
      break;;
    'X')
      uninstall_extension
      break;;
    'R')
      reinstall_application
      break;;
    'q')
      break;;
  esac
}
export -f process_option
