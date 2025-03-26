# aliases
alias ga='git add -p'
alias gs='git status'
alias gl='git log'
alias gb='git branch'
alias gp='git push origin HEAD'
alias dc='docker compose'
alias u='cd ..'
alias o='open .'
alias resterm='echo c'
alias tmpmysql:run='docker run --name tmpmysql --rm -dit -e MYSQL_ROOT_PASSWORD="" -e MYSQL_ALLOW_EMPTY_PASSWORD=1 mysql:5.7'
alias tmpmysql:stop='docker stop $(docker ps | grep tmpmysql | tr -s " " | sed "s/\s/\n/g" | head -n 1)'
alias tmpmysql:attach='docker exec -it $(docker ps | grep tmpmysql | tr -s " " | sed "s/\s/\n/g" | head -n 1) mysql -uroot'
alias gg='git log --graph --all --format="%x09%C(cyan bold)%an%Creset%x09%C(yellow)%h%Creset %C(magenta reverse)%d%Creset %s"'
alias cwd='pwd | pbcopy'
alias here='HERE=`git branch --show-current` && echo ${HERE}'
alias lll='ls -lah'

export GOPATH=${HOME}
export GO111MODULE=on
export PATH="/opt/homebrew/bin:${PATH}"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:${PATH}"
export PATH="${HOME}/flutter/bin:${PATH}"
export PATH="${HOME}/.cargo/bin:${PATH}"
export PATH="${HOME}/bin:${PATH}"
export PATH="${HOME}/google-cloud-sdk/bin:${PATH}"
export PATH="${HOME}/Library/Python/3.7/bin:${PATH}"
export PATH="./node_modules/.bin:${PATH}"

source ${HOME}/.nvm/nvm.sh
