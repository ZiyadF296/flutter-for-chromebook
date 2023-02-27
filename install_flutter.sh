#!/bin/bash

# Check if curl, tar, and jq are installed, and install them if necessary
echo "Checking for required packages..."
if ! command -v curl > /dev/null 2>&1 || ! command -v tar > /dev/null 2>&1 || ! command -v jq > /dev/null 2>&1; then
  echo "Installing required packages..."
  sudo apt-get update
  sudo apt-get install -y curl tar jq
fi

# Check if Google Chrome is installed, and install it if necessary
echo "Checking for Google Chrome..."
if ! command -v google-chrome > /dev/null 2>&1; then
  echo "Installing Google Chrome..."
  curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -o google-chrome-stable_current_amd64.deb
  sudo dpkg -i google-chrome-stable_current_amd64.deb
  rm google-chrome-stable_current_amd64.deb
fi

# Check if VS Code is installed, and install it if necessary
echo "Checking for VS Code..."
if ! command -v code > /dev/null 2>&1; then
  echo "Installing VS Code..."
  curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
  sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
  sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
  sudo apt-get update
  sudo apt-get install -y code
  rm microsoft.gpg
fi

#Check if Flutter is installed, and install it if necessary
echo "Checking for Flutter..."
if ! command -v flutter > /dev/null 2>&1; then
  # Fetch the latest Flutter release version from the releases_linux.json file
  echo "Fetching latest Flutter release version..."
  LATEST_RELEASE_VERSION=$(curl -s https://storage.googleapis.com/flutter_infra_release/releases/releases_linux.json | jq -r '.releases[0].version')

  # Define the installation directory
  INSTALL_DIR="$HOME/flutter"

  # Download and extract the latest Flutter release
  echo "Downloading and extracting Flutter..."
  curl -L "https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_$LATEST_RELEASE_VERSION-stable.tar.xz" | tar -C "$HOME" -xJ

  # Add the Flutter binary path to PATH
  echo "Adding Flutter to PATH..."
  echo 'export PATH="$PATH:$HOME/flutter/bin"' >> "$HOME/.bashrc"
  source "$HOME/.bashrc"
fi

# Install the Flutter and Dart plugins for VS Code
echo "Installing the Flutter and Dart plugins for VS Code..."
code --install-extension dart-code.dart-code --force
code --install-extension dart-code.flutter --force

# Verify the installation
echo "Verifying the installation..."
echo "To make sure everything was installed correctly, run: flutter doctor"
