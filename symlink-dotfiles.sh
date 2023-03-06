#!/bin/bash

# Dotfiles directory
dotfiles_dir="$HOME/.dotfiles"

# List of dotfiles to symlink
dotfiles=(
  .config
  # Add more dotfiles here as needed
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
