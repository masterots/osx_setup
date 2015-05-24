#!/bin/bash

# DESCRIPTION
# Defines reinstall functions.

# Reinstall selected application.
reinstall_application() {
  uninstall_application
  scripts/applications.sh
}
export -f reinstall_application
