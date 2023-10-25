
# Dotfiles

This repository contains my personal configuration files, also known as "dotfiles". Dotfiles are used to customize and configure your system and software to behave in a certain way.

## Quick Start

To set up these dotfiles on a new system, follow these steps:

1. Clone the repository as a bare repository:
   ```sh
   git clone --bare git@github.com:yourusername/dotfiles.git $HOME/.dotfiles
   ```
2. Define the alias for dotfile management:
   ```sh
   alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
   ```
3. Check out the content from the bare repository to your home directory:
   ```sh
   dotfiles checkout
   ```
4. Set Git to ignore untracked files (optional but recommended):
   ```sh
   dotfiles config --local status.showUntrackedFiles no
   ```

## What’s Inside

The repository includes configurations for various tools and software, such as:

- Bash (`~/.bashrc`): Bash configuration and aliases.
- Zsh (`~/.zshrc`): Zsh configuration and aliases.
- Vim (`~/.vimrc`): Vim settings and plugins.
- Tmux (`~/.tmux.conf`): Tmux settings and shortcuts.

## Usage

Use the `dotfiles` alias to manage your configuration files, just like you would use `git` for a regular repository. For example:

- `dotfiles add ~/.vimrc`: Track a new configuration file.
- `dotfiles commit -m "Add vimrc"`: Commit your changes.
- `dotfiles push`: Push your changes to the remote repository.

## Customization

Feel free to fork this repository and customize the dotfiles to suit your preferences. To add new dotfiles to the repository, simply use the `dotfiles` alias as shown in the usage section.

## Contact

If you have questions or need further assistance, feel free to reach out (optional contact information).