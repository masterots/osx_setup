#!/bin/sh

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./run.sh OPTION

# SETTINGS
set -e # Exit if any command returns non-zero.
source settings/settings.sh

# FUNCTIONS
source functions/utilities.sh
source functions/installers.sh
source functions/verifiers.sh
source functions/options.sh

# EXECUTION
if [ -z "$1" ]; then
  echo ''
  while true; do
    echo "Usage: run OPTION"
    echo "\nOSX Options:"
    echo "  b: Apply basic system settings."
    echo "  h: Install Homebrew software (i.e. non-GUI, command line interfaces)."
    echo "  a: Install application software (i.e. GUI-enabled)."
    echo "  x: Install application extensions (i.e. enhancements, add-ons, plug-ins, etc.)"
    echo "  d: Apply system and application defaults."
    echo "  p: Apply software preferences."
    echo "  s: Setup installed software."
    echo "  w: Clean work directory."
    echo "  i: Perform complete install (i.e. executes all options, listed above, top to bottom)."
    echo "  c: Check status of installed applications and extensions."
    echo "  q: Quit/Exit."
    echo ''
    read -p "Enter selection: " response
    process_option $response
  done
else
  process_option $1
fi
echo ''
