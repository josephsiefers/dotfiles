# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export MYSQL_PORT_3306_TCP_ADDR=127.0.0.1
export MYSQL_PORT_3306_TCP_PORT=3306
export MYSQL_ENV_MYSQL_ROOT_PASSWORD=test

# Path to your oh-my-zsh installation.
export ZSH=/Users/gryphon1zer/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

DEFAULT_USER=gryphon1zer

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sublime rails ruby osx bundler vi-mode zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias pp='python -mjson.tool'

#capistrano
alias cpd='cap opsworks_prod deploy'
alias cpdm='cap opsworks_prod deploy:migrations'
alias cpdr='cap opswokrs_prod deploy:restart'

#git
alias gco='git co'
alias gcom='git com'
alias gcor='git cor'
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

alias dpsa="docker ps -a"
alias dps="docker ps"
alias dr="docker run"
alias drd="docker run -d"
alias drp="docker run -P"
alias dritrm='docker run -it --rm'
alias drdp="docker run -dP"
alias ds="docker stop"
alias drm="docker rm"
alias drmi="docker rmi"
alias db='docker build'
alias dl='docker logs'
alias dlf='docker logs -f'
alias dis='docker images'
alias di='docker image'
alias dirm='docker image rm'
alias dp='docker pull'
alias deit='docker exec -it'
alias deit='docker exec -it joinery'
alias dcr='docker-compose run'
alias dcu='docker-compose up'
alias dcuj='docker-compose up joinery'
alias dcb='docker-compose build'
alias dcbj='docker-compose build joinery'
alias dsp='docker system prune'
alias dnls='docker network ls'
alias dni='docker network inspect'

alias beg='bundle exec guard'
alias bbeg='BYEBUG=true bundle exec guard'
alias rs='ASSET_COMPACT=true rails s'
alias bbrs='ASSET_COMPACT=true BYEBUG=true rails s'

function killrspec {
	ps aux | grep [r]spec | awk '{print $2}' | xargs kill -9
}

function drmc {
	docker rm $(docker ps -a -q)
}

function drmoc {
	docker rmi $(docker images | grep "^<none>" | awk "{print $3}") 
}

function drmi {
	docker rmi $(docker images -q)
}

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
