#!/bin/bash

# Navigate to the dotfiles repository and pull the latest changes
git pull

# Define source and destination paths
VSCODE_SETTINGS_SRC="/Users/ayushgundawar/Documents/Programming/Dotfiles/tooling/settings.jsonc"
VSCODE_SETTINGS_DEST="/Users/ayushgundawar/Library/Application Support/Code/User/settings.json"

KITTY_CONF_SRC="/Users/ayushgundawar/Documents/Programming/Dotfiles/tooling/kitty.conf"
KITTY_CONF_DEST="/Users/ayushgundawar/.config/kitty/kitty.conf"

ZSHRC_SRC="/Users/ayushgundawar/Documents/Programming/Dotfiles/system/.zshrc"
ZSHRC_DEST="/Users/ayushgundawar/.zshrc"

BREWFILE_SRC="~/Documents/Programming/Dotfiles/system/Brewfile"

# Copy VSCode settings
cp "$VSCODE_SETTINGS_SRC" "$VSCODE_SETTINGS_DEST"

# Copy kitty.conf
cp "$KITTY_CONF_SRC" "$KITTY_CONF_DEST"

# Copy .zshrc
cp "$ZSHRC_SRC" "$ZSHRC_DEST"

# Install packages from Brewfile
brew bundle --file="$BREWFILE_SRC"

echo "Dotfiles and packages loaded successfully."
