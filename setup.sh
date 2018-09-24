#!/bin/bash

## Bash script for setting up OSX machines.
export MACHINE_CONFIG=$(pwd)
echo "Setting up machine configuration in $MACHINE_CONFIG"

echo "Setting up brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Setting up zsh (Password needed to configure zsh as default shell for current user)"
brew install zsh
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

echo "Setting up vim"
brew install vim

echo "Setting up NeoBundle"
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh install.sh
rm install.sh

echo "Setting up VimRc"
echo "so $MACHINE_CONFIG/vimrc" > ~/.vimrc

echo "Setting up Git configurations"
echo "git config --global alias.all 'commit -a --amend --no-edit'"
echo "git config --global alias.force 'push --force'"

echo "Installing zsh-git-prompt"
brew install zsh-git-prompt

echo "Setup powerline font"
# clone
git clone https://github.com/powerline/fonts.git
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

echo "Installing cowsay"
brew install cowsay

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Adding zsh config"
echo "source ~/machine/zshrc" > ~/.zshrc

echo "Some extra tools"
brew install gdub
brew install ripgrep

echo "All good! Now kill this terminal and open a new one ;)"
