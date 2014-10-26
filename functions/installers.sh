#!/bin/bash

# DESCRIPTION
# Defines software installer functions.

# Mounts a disk image.
# Parameters:
# $1 = The image path.
function mount_image() {
  printf "Mounting image...\n"
  hdiutil attach "$1" -noidmereveal
}
export -f mount_image

# Unmounts a disk image.
# Parameters:
# $1 = The mount path.
function unmount_image() {
  printf "Unmounting image...\n"
  hdiutil detach -force "$1"
}
export -f unmount_image

# Downloads an installer to local disk.
# Parameters:
# $1 = The URL.
# $2 = The file name.
function download_installer() {
  printf "Downloading $1...\n"
  clean_work_path
  mkdir $WORK_PATH
  curl --location --retry 3 --retry-delay 5 "$1" >> "$WORK_PATH/$2"
}
export -f download_installer

# Downloads an installer to the $HOME/Downloads folder for manual use.
# Parameters:
# $1 = The URL.
# $2 = The file name.
function download_only() {
  if [[ -e "$HOME/Downloads/$2" ]]; then
    printf "Downloaded: $2.\n"
  else
    printf "Downloading $1...\n"
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

  printf "Installing $2 in $install_root...\n"
  local file_extension=$(get_file_extension "$2")
  if [[ "$file_extension" == "prefPane" ]]; then
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

  printf "Installing $2 in $install_root...\n"
  local package=$(sudo find "$1" -type f -name "*.pkg" -o -name "*.mpkg")
  sudo installer -pkg "$package" -target /
}
export -f install_pkg

# Installs an application via a DMG file.
# Parameters:
# $1 = The URL.
# $2 = The mount path.
# $3 = The application name.
function install_dmg_app() {
  local url="$1"
  local mount_point="/Volumes/$2"
  local app_name="$3"
  local install_path=$(get_install_path "$app_name")
  local download_file="download.dmg"

  if [[ -e "$install_path" ]]; then
    printf "Installed: $app_name.\n"
  else
    download_installer "$url" "$download_file"
    mount_image "$WORK_PATH/$download_file"
    install_app "$mount_point" "$app_name"
    unmount_image "$mount_point"
    verify_install "$app_name"
  fi
}
export -f install_dmg_app

# Installs a package via a DMG file.
# Parameters:
# $1 = The URL.
# $2 = The mount path.
# $3 = The application name.
function install_dmg_pkg() {
  local url="$1"
  local mount_point="/Volumes/$2"
  local app_name="$3"
  local install_path=$(get_install_path "$app_name")
  local download_file="download.dmg"

  if [[ -e "$install_path" ]]; then
    printf "Installed: $app_name.\n"
  else
    download_installer "$url" "$download_file"
    mount_image "$WORK_PATH/$download_file"
    install_pkg "$mount_point" "$app_name"
    unmount_image "$mount_point"
    verify_install "$app_name"
  fi
}
export -f install_dmg_pkg

# Installs an application via a zip file.
# Parameters:
# $1 = The URL.
# $2 = The application name.
function install_zip_app() {
  local url="$1"
  local app_name="$2"
  local install_path=$(get_install_path "$app_name")
  local download_file="download.zip"

  if [[ -e "$install_path" ]]; then
    printf "Installed: $app_name.\n"
  else
    download_installer "$url" "$download_file"

    (
      printf "Preparing...\n"
      cd "$WORK_PATH"
      unzip -q "$download_file"
    )

    install_app "$WORK_PATH" "$app_name"
    verify_install "$app_name"
  fi
}
export -f install_zip_app

# Installs an application via a tar file.
# Parameters:
# $1 = The URL.
# $2 = The application name.
# $3 = The decompress options.
function install_tar_app() {
  local url="$1"
  local app_name="$2"
  local options="$3"
  local install_path=$(get_install_path "$app_name")
  local download_file="download.tar"

  if [[ -e "$install_path" ]]; then
    printf "Installed: $app_name.\n"
  else
    download_installer "$url" "$download_file"

    (
      printf "Preparing...\n"
      cd "$WORK_PATH"
      tar "$options" "$download_file"
    )

    install_app "$WORK_PATH" "$app_name"
    verify_install "$app_name"
  fi
}
export -f install_tar_app

# Installs a package via a zip file.
# Parameters:
# $1 = The URL.
# $2 = The application name.
function install_zip_pkg() {
  local url="$1"
  local app_name="$2"
  local install_path=$(get_install_path "$app_name")
  local download_file="download.zip"

  if [[ -e "$install_path" ]]; then
    printf "Installed: $app_name.\n"
  else
    download_installer "$url" "$download_file"

    (
      printf "Preparing...\n"
      cd "$WORK_PATH"
      unzip -q "$download_file"
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

  if [[ -n "$3" ]]; then
    local options="$options $3"
  fi

  if [[ -e "$install_path" ]]; then
    printf "Installed: $app_name.\n"
  else
    printf "Installing: $install_path...\n"
    git clone $options "$repository_url" "$install_path"
    verify_path "$install_path"
  fi
}
export -f install_git_app

# Installs a single file.
# Parameters:
# $1 = The URL.
# $2 = The install path.
function install_file() {
  local file_url=$(dirname "$1")
  local file_name=$(get_file_name "$1")
  local install_path="$2"

  if [[ -e "$install_path" ]]; then
    printf "Installed: $file_name.\n"
  else
    printf "Installing: $install_path...\n"
    download_installer "$file_url" "$file_name"
    mkdir -p $(dirname "$install_path")
    mv "$WORK_PATH/$file_name" "$install_path"
    verify_path "$install_path"
  fi
}
export -f install_file

# Installs Atom extensions.
# Parameters:
# $1 = Install path.
function install_atom_extension() {
  local install_path="$1"
  local extension=$(basename "$install_path")

  if [[ -e "$install_path" ]]; then
    printf "Installed: $extension.\n"
  else
    apm install "$extension"
    verify_path "$install_path"
  fi
}
export -f install_atom_extension
