#!/bin/sh

echo "Setting up your Mac..."

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -sw $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file ./Brewfile

# Clone Github repositories
# ./clone.sh

# Symlink the Mackup config file to the home directory
# ln -s ./.mackup.cfg $HOME/.mackup.cfg

# Set macOS preferences - we will run this last because this will reload the shell
# source ./.macos

# Remove and link gitconfig
rm $HOME/.githconfig && ln -s ./.gitconfig $HOME/.gitconfig

# Link .tmux.conf
ln -s ./.tmux.conf $HOME/.tmux.conf

# Link .custom functions
ln -s ./.custom_functions $HOME/.custom_functions

# timezone setup for rdev
# sudo rm -rf /etc/localtime
# sudo ln -s /usr/share/zoneinfo/Asia/Kolkata /etc/localtime