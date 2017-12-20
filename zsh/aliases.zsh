# zsh helpers
alias sa='source ~/.zsh/aliases.zsh'
alias sz='source ~/.zshrc'
alias va='vim ~/.zsh/aliases.zsh'
alias vz='vim ~/.zshrc'
alias vf='vim ~/.zsh/functions.zsh'

# aliases
alias ls='/bin/ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# listing
alias ll='ls -lh'
alias lx='ls -lhX'
alias lla='ls -lAh'
alias la='ls -Ah'
alias l='ls -CFh1'
alias lh='ls -a | egrep "^/."'

# navigating
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# coding
alias ccat='pygmentize -g'
alias find-migrations="git diff HEAD..master --name-only | grep migr"
alias -g _json='| jq "."'

# networking
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias dig="dig +nocmd any +multiline +noall +answer"

# git
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias gh='git hist'
alias gcd='git checkout develop'
# hub
alias hpr='hub pull-request'


# docker
alias dcu='docker-compose up'
alias dcr='docker-compose run'
alias dcrs='docker-compose run --service-ports'
