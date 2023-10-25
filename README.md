
# Dotfiles

This repository contains my personal dotfiles. These configurations are managed using the "bare Git repository" method, making it easy to set up on any new machine.

## Setup

### 1. Initialization

Create a new bare Git repository in your home directory for dotfiles.

\```bash
git init --bare $HOME/.dotfiles
\```

### 2. Alias Creation

Add an alias for the Git command to easily manage dotfiles. Depending on your shell, add the following to your `.bashrc` or `.zshrc`:

\```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
\```

Reload your shell configuration:

\```bash
source ~/.bashrc   # or ~/.zshrc for Zsh users
\```

### 3. Configuration

Set Git to hide untracked files for this repository, so they don't clutter the status command.

\```bash
dotfiles config --local status.showUntrackedFiles no
\```

### 4. Adding and Committing Dotfiles

You can use the `dotfiles` alias just like the `git` command. For example:

\```bash
dotfiles add ~/.vimrc ~/.zshrc
dotfiles commit -m "Add vimrc and zshrc"
\```

To track entire directories, such as `.config`, you can do:

\```bash
dotfiles add -r ~/.config/
dotfiles commit -m "Add entire .config directory"
\```

### 5. Push to Remote Repository

After creating a repository on a platform like GitHub or GitLab:

\```bash
dotfiles remote add origin [your-repo-url]
dotfiles push -u origin master
\```

### 6. Cloning to Another Machine

To deploy your dotfiles on a new machine:

\```bash
git clone --bare [your-repo-url] $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
\```

If there are conflicts, back them up and retry the checkout.

## Tips

- Always backup important configurations before making changes.
- This method tracks files without moving them or changing them into symlinks.
- Be cautious not to commit sensitive data. Review changes before pushing to a public repository.
