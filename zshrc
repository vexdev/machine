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
prompt_context(){}

# Defining Variables
export MACHINE_CONFIG=$(dirname "$0")
export ANDROID_HOME=$HOME/Library/Android/sdk/
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

# Java environment with Jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
export JENV_ROOT=/usr/local/opt/jenv

# Some aliases
alias ls="lsd"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias amend='g add -A && g commit --amend --no-edit && g push -f'

# Some functions
source $MACHINE_CONFIG/functions.sh
source <(kubectl completion zsh)
source <(helm completion zsh)

# Thefuck
eval $(thefuck --alias)

# Welcome screed
fortune -s humorists | cowsay -f stegosaurus

