#!/bin/bash

# Dotfiles directory
dotfiles_dir="$HOME/.dotfiles"

# List of dotfiles to symlink
dotfiles=(
  # Add more dotfiles here as needed
  .cargo
  .config
  .deno
  .git
  .lesshst
  .npm
  .oracle_jre_usage
  .profile
  .rustup
  .ssh
  .tmux
  .viminfo
  .zsh_history
  .zsh_sessions
  .zshenv
  .zshrc
)

# Loop through dotfiles and create symlinks
for dotfile in "${dotfiles[@]}"; do
  source_file="$dotfiles_dir/$dotfile"
  target_file="$HOME/$dotfile"
  if [ -f "$target_file" ] || [ -d "$target_file" ] || [ -L "$target_file" ]; then
    echo "Skipping $target_file (already exists)"
  else
    ln -s "$source_file" "$target_file"
    echo "Created symlink for $target_file"
  fi
done
