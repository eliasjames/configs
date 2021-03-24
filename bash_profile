# basic
alias ll='ls -la'
PS1='\W \$ '

# bash
alias bssh='vi ~/.bash_profile'
alias sssh='source ~/.bash_profile'

# history 
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

# git
alias gs='git status'
alias gb='git branch'
alias gd='git diff'
alias gad='git add .'
alias gdc='git diff --cached'
alias gcm='git checkout master'
alias gcs='git checkout staging'

# node
alias nrs='npm run start'
alias nrd='node --inspect-brk js/node.test.runner.js'
alias nrdp='firebase deploy --only functions:startSession'
alias nrt='npm run test'
alias nrsm='npm run start-mock'
alias nrst='rm -rf node_modules && npm i'

# function npm-do { (PATH=$(npm bin):$PATH; eval $@;) }

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias pyt='python -m SimpleHTTPServer'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# cds
alias code='cd ~/Documents/code'
alias write='cd ~/Documents/writing && clear'
alias curr='cd ~/Documents/code/DevReactPortal'
