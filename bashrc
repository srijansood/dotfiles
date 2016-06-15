# commands run for non-login shells

[ -z "$PS1" ] && return  # don't do anything else if non-interactive shell

# new commands (aliases)
for file in ${HOME}/.bash/commands/*; do
    source $file
done

alias c='clear'
title(){
   echo -en "\033]0;$1\a"
}

alias n='cd /Users/srijan-n/Nervana'
alias gw='ssh srijan@gw.dev.nervanasys.com'
alias jenkins='ssh -i ~/.ssh/jenkins.pem ubuntu@$1'
alias api='ssh srijan@srijan-api-0'
alias predict='ssh srijan@srijan-predict-0'
alias sv3='ssh srijan@sv3-0101-08'
