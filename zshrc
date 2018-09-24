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

# Oh my zsh
export ZSH=~/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Defining Variables
export MACHINE_CONFIG=$(dirname "$0")
export ANDROID_HOME=$HOME/Library/Android/sdk/
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export GOPATH=$HOME/projects/go/
export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_77.jdk
path+=("$GOPATH/bin")
path+=("$ANDROID_HOME/tools/")
path+=("$ANDROID_HOME/platform-tools/")
path+=("$ANDROID_HOME/build-tools/25.0.2/")
path+=("$ZSH")
path+=("$HOME/miniconda3/bin")
path+=("$HOME/projects/depot_tools")
path+=("$HOME/Library/Python/2.7/bin")
export PATH
export VIM_VERSION=$(ls -1 /usr/local/Cellar/vim/ | sort -rn | head -n1)
export VIM_HOME="/usr/local/Cellar/vim/$VIM_VERSION/bin/"
export JAVA_HOME="`/usr/libexec/java_home -v '1.8*'`"

# Some aliases
alias v="$VIM_HOME/vim"
alias vi="$VIM_HOME/vim"
alias vim="$VIM_HOME/vim"
alias vimdiff="$VIM_HOME/vimdiff"
alias amend='g all && g force'

# Some functions
source $MACHINE_CONFIG/functions.sh

# Welcome screed
fortune | cowsay -f stegosaurus
