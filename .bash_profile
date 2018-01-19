parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \D{%T} \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

#export NVM_DIR="$HOME/.nvm"
#. "/usr/local/opt/nvm/nvm.sh"

function trash(){
	mv $@  ~/.Trash;
}

source ~/git-completion.bash
#source /usr/local/etc/bash_completion.d/git-flow-completion.bash

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

