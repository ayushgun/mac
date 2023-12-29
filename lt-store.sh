#!/bin/bash

# Define source and destination paths
VSCODE_SETTINGS_SRC="/Users/ayushgundawar/Library/Application Support/Code/User/settings.json"
VSCODE_SETTINGS_DEST="/Users/ayushgundawar/Documents/Programming/Dotfiles/tooling/settings.jsonc"

BREWFILE_DEST="~/Documents/Programming/Dotfiles/system/Brewfile"

KITTY_CONF_SRC="/Users/ayushgundawar/.config/kitty/kitty.conf"
KITTY_CONF_DEST="/Users/ayushgundawar/Documents/Programming/Dotfiles/tooling/kitty.conf"

ZSHRC_SRC="/Users/ayushgundawar/.zshrc"
ZSHRC_DEST="/Users/ayushgundawar/Documents/Programming/Dotfiles/system/.zshrc"

# Copy VSCode settings
cp "$VSCODE_SETTINGS_SRC" "$VSCODE_SETTINGS_DEST"

# Generate and copy Brewfile
brew bundle dump --file="$BREWFILE_DEST" --force

# Copy kitty.conf
cp "$KITTY_CONF_SRC" "$KITTY_CONF_DEST"

# Copy .zshrc
cp "$ZSHRC_SRC" "$ZSHRC_DEST"

# Navigate to the dotfiles repository
cd ~/Documents/Programming/Dotfiles

echo "Dotfiles updated successfully."

# Create a commit with a message including the current date and the device information
current_date=$(date "+%Y-%m-%d")
commit_message="Updating repo from my laptop on $current_date"
git add .
git commit -m "$commit_message"
git push
