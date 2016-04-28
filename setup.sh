echo "Setting up NeoBundle"
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh install.sh
rm install.sh

echo "Setting up VimRc"
echo "so ~/machine/vimrc" > "~/.vimrc"

echo "Setting up Git configurations"
echo "git config --global alias.all 'commit -a --amend --no-edit'"
echo "git config --global alias.force 'push --force'"

echo "Setting up Autorun file (Terminal)"
echo "source ~/machine/autorun.sh" > ../.bashrc
echo "source ~/machine/autorun.sh" > ../.bash_profile

echo "Setting up brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing bash-git-prompt"
brew install bash-git-prompt
