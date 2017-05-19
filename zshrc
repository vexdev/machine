# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' completions '*'
zstyle :compinstall filename '/Users/luca.vitucci/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install
#

# Setup ZSH Git Prompt
source ~/zsh-git-prompt/zshrc.sh
PROMPT='%B%m%~%b$(git_super_status) %# '

# Set VI mode
bindkey -v

# Defining Variables
export MACHINE_CONFIG=$(dirname "$0")
export ANDROID_HOME=$HOME/Library/Android/sdk/
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export GOPATH=$HOME/go/
export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_77.jdk
path+=('$HOME/go/bin/')
path+=('$ANDROID_HOME/tools/')
path+=('$ANDROID_HOME/platform-tools/')
path+=('$ANDROID_HOME/build-tools/25.0.2/')
export PATH
export VIM_VERSION=$(ls -1 /usr/local/Cellar/vim/ | sort -rn | head -n1)
export VIM_HOME="/usr/local/Cellar/vim/$VIM_VERSION/bin/"

# Some aliases
alias v="$VIM_HOME/vim"
alias vi="$VIM_HOME/vim"
alias vim="$VIM_HOME/vim"
alias vimdiff="$VIM_HOME/vimdiff"
alias gw="$MACHINE_CONFIG/gw.sh"
alias g='git'
alias amend='g all && g force'

# Some functions
source $MACHINE_CONFIG/functions.sh

# Welcome screed
fortune | cowsay -f stegosaurus
