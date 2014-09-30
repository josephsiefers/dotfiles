set editing-mode vi
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

alias pp='python -mjson.tool'
alias cpd='cap prod deploy'
alias cpdm='cap prod deploy:migrations'
alias cpdr='cap prod deploy:restart'