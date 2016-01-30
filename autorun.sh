if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
	GIT_PROMPT_THEME=Solarized
	source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

source ~/machine/git-completion.bash
source ~/machine/functions.sh

export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export PATH=$PATH:/Users/luca.vitucci/sdk/tools/:/Users/luca.vitucci/sdk/platform-tools/

alias v='/usr/local/Cellar/vim/7.4.1147/bin/vim'
alias vi='/usr/local/Cellar/vim/7.4.1147/bin/vim'
alias vim='/usr/local/Cellar/vim/7.4.1147/bin/vim'
alias vimdiff='/usr/local/Cellar/vim/7.4.1147/bin/vimdiff'
