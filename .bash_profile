export PATH=$PATH:~/bin/
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

alias ssh-app1='ssh joesumzerocom@ec2-54-234-67-41.compute-1.amazonaws.com'
alias ssh-app2='ssh joesumzerocom@ec2-54-91-143-166.compute-1.amazonaws.com'
alias ssh-utility='ssh joesumzerocom@ec2-54-242-232-208.compute-1.amazonaws.com'
alias ssh-services='ssh joesumzerocom@services.sumzero.com'
alias ssh-staging='ssh joesumzerocom@staging.sumzero.com'

alias dpsa="docker ps -a"
alias dps="docker ps"
alias dr="docker run"
alias drd="docker run -d"
alias drp="docker run -P"
alias dritrm='docker run -it --rm'
alias drdp="docker run -dP"
alias ds="docker stop"
alias drm="docker rm"
alias db='docker build'
alias dl='docker logs'
alias dlf='docker logs -f'
alias di='docker images'
alias dp='docker pull'
alias deit='docker exec -it'
alias dcr='docker-compose run'

alias beg='bundle exec guard'
alias bbeg='BYEBUG=true bundle exec guard'
alias rs='ASSET_COMPACT=true rails s'
alias bbrs='ASSET_COMPACT=true BYEBUG=true rails s'

eval $(docker-machine env default)

alias dil='docker inspect -f "{{ .HostConfig.Links }}"'

function drmc {
	docker rm $(docker ps -a -q)
}

function drmoc {
	docker rmi $(docker images | grep "^<none>" | awk "{print $3}") 
}

function drmi {
	docker rmi $(docker images -q)
}

function killrspec {
	ps aux | grep [r]spec | awk '{print $2}' | xargs kill -9
}

eval "$(direnv hook bash)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
