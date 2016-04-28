if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
	GIT_PROMPT_THEME=Solarized
	source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

source ~/machine/git-completion.bash
source ~/machine/functions.sh

export ANDROID_HOME=$HOME/Library/Android/sdk/
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export PATH=$PATH:$HOME/go/bin/:$ANDROID_HOME/tools/:$ANDROID_HOME/platform-tools/
export GOPATH=$HOME/go/

alias v='/usr/local/Cellar/vim/7.4.1707/bin/vim'
alias vi='/usr/local/Cellar/vim/7.4.1707/bin/vim'
alias vim='/usr/local/Cellar/vim/7.4.1707/bin/vim'
alias vimdiff='/usr/local/Cellar/vim/7.4.1707/bin/vimdiff'
alias gw='~/machine/gw.sh'
