export PATH=$PATH:~/bin/
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=/usr/local/sbin:$PATH

function parse_git_branch { 
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
} 
export PS1="\h:\W\$(parse_git_branch)$ "

source ~/bin/git-completion.bash

alias pp='python -mjson.tool'

#capistrano
alias cpd='cap opsworks_prod deploy'
alias cpdm='cap opsworks_prod deploy:migrations'
alias cpdr='cap opswokrs_prod deploy:restart'

#git
alias gco='git co'
alias gcom='git com'
alias gcop='git cop'

alias gst='git st'

alias ga='git a'
alias gaa='git aa'
alias gaap='git aap'
alias gaam='git aam'
alias gaau='git aau'

alias gdt='git dt'
alias gdc='git dc'
alias gc='git c'
alias gr='git r'
alias gss='git ss'
alias gsp='git sp'
alias gsl='git sl'
alias gsd='git sd'

alias gp='git push'
alias gpff='git pff'
alias grb='git rb'

alias gmm='git mm'
alias gm='git m'
alias grc='git rc'

alias grh='git rh'
alias gcdf='git cdf'

alias gmt='git mt'

alias gcob='git co -b'

alias be='bundle exec '
alias beg='bundle exec guard'

alias up='cd ../'

alias ssh-app='ssh deploy@ec2-54-81-205-234.compute-1.amazonaws.com'
alias ssh-utility='ssh deploy@ec2-54-197-140-154.compute-1.amazonaws.com'
