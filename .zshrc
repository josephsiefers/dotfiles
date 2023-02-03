# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/josephsiefers/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions rails ruby macos bundler)

source $ZSH/oh-my-zsh.sh

if [ -x "$(command -v exa)" ]; then
    alias ls="exa"
    alias la="exa --long --all --group"
fi
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

#git
alias gco='git co'
alias gcom='git com'
alias gcor='git cor'
alias gcop='git cop'
alias gcod='git cod'

alias gst='git st'

alias gbrd='git brd'

alias gt='git t'
alias gtd='git td'

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
alias gsa='git sa'
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
alias dcr='docker compose run'
alias dcu='docker compose up -d'
alias dcb='docker compose build'
alias dcd='docker compose down'
alias dsp='docker system prune'
alias dvp='docker volume prune'
alias dnls='docker network ls'
alias dni='docker network inspect'

#hasura

alias hm='hasura migrate apply --database-name default --up all && hasura metadata apply'
alias hmc='hasura migrate create --database-name default'
alias hma='hasura migrate apply --database-name default'
alias hmaskip='hasura migrate apply --database-name default --skip-execution --version'
alias hmaa='hasura migrate apply --database-name default --up all'
alias hmsq='hasura migrate squash --database-name default --from'
alias hms='hasura migrate status --database-name default'
alias hma='hasura migrate apply --database-name default --version'
alias hmd='hasura migrate delete --database-name default --version'
alias hmdwn='hasura migrate apply --database-name default --down'
alias hmr='hasura migrate apply --database-name default --type down --version'
alias hmda='hasura metadata apply'
alias hc='hasura console'
alias hmaat='hasura migrate apply --database-name default --up all --endpoint http://localhost:8081'
alias hmdwnt='hasura migrate apply --database-name default --down --endpoint http://localhost:8081'
alias hmdat='hasura metadata apply --endpoint http://localhost:8081'
alias hmaskipt='hasura migrate apply --skip-execution --endpoint http://localhost:8081 --version'
alias hmst='hasura migrate status --database-name default --endpoint http://localhost:8081'
alias hmt='hasura migrate apply --database-name default --up all --endpoint http://localhost:8081 && hasura metadata apply --endpoint http://localhost:8081 && hasura migrate status --database-name default --endpoint http://localhost:8081'

#android
alias adbc='adb connect'
alias adbt='adb tcpip 5555'
alias adbd='adb devices'

function killorig() {
    find . -name '*.orig' -delete
}

alias ngroklocal='ngrok http http://localhost:3000'


alias ports-up='sudo lsof -i -P | grep LISTEN'
alias flushdns='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder'
alias gitlost='git fsck --lost-found | grep "^dangling commit" | sed "s/^dangling commit //g" | xargs git show -s --oneline'
alias rmorig="find . -name '*.orig' -delete"

#https://stackoverflow.com/questions/4421633/who-is-listening-on-a-given-tcp-port-on-mac-os-x
listening() {
    if [ $# -eq 0 ]; then
        sudo lsof -iTCP -sTCP:LISTEN -n -P
    elif [ $# -eq 1 ]; then
        sudo lsof -iTCP -sTCP:LISTEN -n -P | grep -i --color $1
    else
        echo "Usage: listening [pattern]"
    fi
}

#https://stackoverflow.com/questions/3425340/how-can-i-capture-the-stdout-from-a-process-that-is-already-running
capture() {
    sudo dtrace -p "$1" -qn '
        syscall::write*:entry
        /pid == $target && arg0 == 1/ {
            printf("%s", copyinstr(arg1, arg2));
        }
    '
}

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

bindkey -v
#cmd-R won't work by default with vim bindings - see:
#https://stackoverflow.com/questions/14040351/filtering-zsh-history-by-command
bindkey "^R" history-incremental-search-backward

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

eval "$(direnv hook zsh)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
