#!/bin/bash

# DESCRIPTION
# Applies basic system settings.

# EXECUTION
echo "Setting system label and name..."
sudo scutil --set ComputerName $SYSTEM_LABEL
sudo scutil --set HostName $SYSTEM_NAME
sudo scutil --set LocalHostName $SYSTEM_NAME
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $SYSTEM_NAME

echo "Setting default desktop image (3200x2000@300)."
sudo cp settings/default_desktop.jpg /System/Library/CoreServices/DefaultDesktop.jpg

echo "Cleaning default directories..."
rm -rf $HOME/Documents/*
rm -rf $HOME/Downloads/*
