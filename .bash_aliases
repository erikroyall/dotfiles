# APT
alias pi="sudo pacman -Sy"
alias pu="sudo pacman -Syu"
alias pr="sudo pacman -R"

alias yi="yaourt -S"

# Systemctl
alias se="sudo systemctl enable"
alias sd="sudo systemctl disable"
alias st="sudo systemctl start"
alias sp="sudo systemctl stop"
alias sr="sudo systemctl restart"
alias ss="sudo systemctl status"

# Create-ap
alias ei="sudo systemctl start create_ap"
alias di="sudo systemctl stop create_ap"
alias ri="sudo systemctl restart create_ap"
alias si="sudo systemctl status create_ap"

# wifi
alias uw="sudo rfkill unblock wifi"

# npm
alias nis="npm install --save"
alias nisd="npm install --save-dev"
alias ni="npm install"
alias nit="npm init"
alias nig="npm install -g"

# git
alias gi="git init"
alias ga="git add ."
alias gc="git commit -am"
alias gs="git status"
alias gp="git push"
alias gl="git log --pretty=oneline"

# files I edit frequently
alias vba="vim ~/.bash_aliases"
alias vrc="vim ~/.vimrc"
alias vbrc="vim ~/.bashrc"
alias re="source ~/.bashrc"

# docker
alias di="sudo docker images"
alias dr="sudo docker run"
alias dp="sudo docker pull"

alias ll="ls -l"
alias la="ls -la"

# compile and run
function c {
  clang -Wall -g $1.c -o $1 && ./$1
}

function c+ {
  clang++ -lstdc++ -std=c++1y -o $1 $1.cpp && ./$1
}

