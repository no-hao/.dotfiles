# .dotfiles

This repository contains dotfiles for various applications and configurations. To use them, you can symlink them to their respective locations in your home directory.

## Symlinking Dotfiles

To run the symlink script for the dotfiles, follow these steps:

1. Clone this repository to your local machine by running `git clone git@github.com:<your-github-username>/.dotfiles.git`.
2. `cd` into the `.dotfiles` directory.
3. Make the script executable by running `chmod +x symlink-dotfiles.sh`
4. Run the script with `./symlink-dotfiles.sh`
5. If you add other dotfiles make sure you add it to the dir function of the symlink-dotfiles script

The script will symlink the dotfiles in this repository to their respective locations in your home directory. Note that any existing dotfiles in your home directory with the same name will be replaced by a symlink to the corresponding file in this repository.

## Contributing

If you'd like to contribute to this repository, feel free to submit a pull request with your changes.

## License

This repository is licensed under the MIT License. See the `LICENSE` file for more details.

