#!/usr/bin/env bash

set -euo pipefail

HOME_DIR="$HOME"
BACKUP_DIR="$HOME_DIR/.dotfiles_backup/$(date +%Y%m%d_%H%M%S)"

VIMRC_SOURCE="$HOME_DIR/.config/vim/vimrc"
ZSHRC_SOURCE="$HOME_DIR/.config/zsh/zshrc"

echo "Creating backup directory: $BACKUP_DIR"
echo

mkdir -p "$BACKUP_DIR"

backup_if_exists() {
  local target="$1"

  if [ -e "$target" ] || [ -L "$target" ]; then
    echo "↪ Backup: $target"
    mv "$target" "$BACKUP_DIR/"
  fi
}

link() {
  local source="$1"
  local target="$2"

  if [ -L "$target" ] && [ "$(readlink "$target")" = "$source" ]; then
    echo "✔ Already linked: $target"
    return
  fi

  backup_if_exists "$target"
  ln -s "$source" "$target"
  echo "🔗 Linked $target → $source"
}

echo "Linking zshrc and vimrc..."

link "$VIMRC_SOURCE" "$HOME_DIR/.vimrc"
link "$ZSHRC_SOURCE" "$HOME_DIR/.zshrc"

echo
echo "✅ Installation complete!"
echo "Restart your terminal to apply changes."

