#!/bin/bash

# DESCRIPTION
# Defines software installer functions.

# Mounts a disk image.
# Parameters:
# $1 = The image path.
function mount_image() {
  echo "Mounting image..."
  hdiutil attach "$1" -noidmereveal
}
export -f mount_image

# Unmounts a disk image.
# Parameters:
# $1 = The mount path.
function unmount_image() {
  echo "Unmounting image..."
  hdiutil detach -force "$1"
}
export -f unmount_image

# Downloads an installer to local disk.
# Parameters:
# $1 = The remote URL.
# $2 = The file name.
function download_installer() {
  echo "Downloading $1/$2..."
  clean_work_path
  mkdir $WORK_PATH
  (
    cd $WORK_PATH
    curl --location --remote-name --retry 3 --retry-delay 5 "$1/$2"
  )
}
export -f download_installer

# Downloads an installer to the $HOME/Downloads folder for manual use.
# Parameters:
# $1 = The remote URL.
# $2 = The file name.
function download_only() {
  if [ -e "$HOME/Downloads/$2" ]; then
    echo "Downloaded: $2."
  else
    echo "Downloading $1/$2..."
    download_installer "$1" "$2"
    mv "$WORK_PATH/$2" "$HOME/Downloads"
  fi
}
export -f download_only

# Installs an application.
# Parameters:
# $1 = The application source path.
# $2 = The application name.
function install_app() {
  local install_root=$(get_install_root "$2")

  echo "Installing $2 in $install_root..."
  local file_extension=$(get_file_extension "$2")
  if [ "$file_extension" == "prefPane" ]; then
    sudo cp -pR "$1/$2" "$install_root"
  else
    cp -a "$1/$2" "$install_root"
  fi
}
export -f install_app

# Installs a package.
# Parameters:
# $1 = The package source path.
# $2 = The application name.
function install_pkg() {
  local install_root=$(get_install_root "$2")

  echo "Installing $2 in $install_root..."
  local package=$(sudo find "$1" -type f -name "*.pkg" -o -name "*.mpkg")
  sudo installer -pkg "$package" -target /
}
export -f install_pkg

# Installs an application via a DMG file.
# Parameters:
# $1 = The remote URL.
# $2 = The download file name.
# $3 = The mount path.
# $4 = The application name.
function install_dmg_app() {
  local app_name="$4"
  local install_path=$(get_install_path "$app_name")

  if [ -e "$install_path" ]; then
    echo "Installed: $app_name."
  else
    download_installer $1 $2
    local download_file="$WORK_PATH/$2"

    local mount_point="/Volumes/$3"
    mount_image "$download_file"
    install_app "$mount_point" "$app_name"
    unmount_image "$mount_point"

    verify_install "$app_name"
  fi
}
export -f install_dmg_app

# Installs a package via a DMG file.
# Parameters:
# $1 = The remote URL.
# $2 = The download file name.
# $3 = The mount path.
# $4 = The application name.
function install_dmg_pkg() {
  local app_name="$4"
  local install_path=$(get_install_path "$app_name")

  if [ -e "$install_path" ]; then
    echo "Installed: $app_name."
  else
    download_installer "$1" "$2"
    local download_file="$WORK_PATH/$2"

    local mount_point="/Volumes/$3"
    mount_image "$download_file"
    install_pkg "$mount_point" "$app_name"
    unmount_image "$mount_point"

    verify_install "$app_name"
  fi
}
export -f install_dmg_pkg

# Installs an application via a zip file.
# Parameters:
# $1 = The remote URL.
# $2 = The download file name.
# $3 = The application name.
function install_zip_app() {
  local app_name="$3"
  local install_path=$(get_install_path "$app_name")

  if [ -e "$install_path" ]; then
    echo "Installed: $app_name."
  else
    download_installer "$1" "$2"

    (
      echo "Preparing..."
      cd "$WORK_PATH"
      unzip -q "$2"
    )

    install_app "$WORK_PATH" "$app_name"
    verify_install "$app_name"
  fi
}
export -f install_zip_app

# Installs an application via a tar file.
# Parameters:
# $1 = The remote URL.
# $2 = The download file name.
# $3 = The uncompress options.
# $4 = The application name.
function install_tar_app() {
  local app_name="$4"
  local install_path=$(get_install_path "$app_name")

  if [ -e "$install_path" ]; then
    echo "Installed: $app_name."
  else
    download_installer "$1" "$2"

    (
      echo "Preparing..."
      cd "$WORK_PATH"
      tar "$3" "$2"
    )

    install_app "$WORK_PATH" "$app_name"
    verify_install "$app_name"
  fi
}
export -f install_tar_app

# Installs a package via a zip file.
# Parameters:
# $1 = The remote URL.
# $2 = The download file name.
# $3 = The application name.
function install_zip_pkg() {
  local app_name="$3"
  local install_path=$(get_install_path "$app_name")

  if [ -e "$install_path" ]; then
    echo "Installed: $app_name."
  else
    download_installer "$1" "$2"

    (
      echo "Preparing..."
      cd "$WORK_PATH"
      unzip -q "$2"
    )

    install_pkg "$WORK_PATH" "$app_name"
    verify_install "$app_name"
  fi
}
export -f install_zip_pkg

# Installs application code from a Git repository.
# Parameters:
# $1 = Repository URL.
# $2 = Install path.
# $3 = Git clone options (if any).
function install_git_app() {
  local repository_url="$1"
  local app_name=$(get_file_name "$2")
  local install_path="$2"
  local options="--quiet"

  if [ -n "$3" ]; then
    local options="$options $3"
  fi

  if [ -e "$install_path" ]; then
    echo "Installed: $app_name."
  else
    echo "Installing: $install_path..."
    git clone $options "$repository_url" "$install_path"
    verify_path "$install_path"
  fi
}
export -f install_git_app

# Installs a single file.
# Parameters:
# $1 = The remote URL.
# $2 = The install path.
function install_file() {
  local file_url=$(dirname "$1")
  local file_name=$(get_file_name "$1")
  local install_path="$2"

  if [ -e "$install_path" ]; then
    echo "Installed: $file_name."
  else
    echo "Installing: $install_path..."
    download_installer "$file_url" "$file_name"
    mkdir -p $(dirname "$install_path")
    mv "$WORK_PATH/$file_name" "$install_path"
    verify_path "$install_path"
  fi
}
export -f install_file
