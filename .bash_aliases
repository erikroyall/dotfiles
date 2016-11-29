alias ai="sudo apt install -y"
alias au="sudo apt update -y && sudo apt upgrade -y"
alias ar="sudo apt remove"
alias ei="sudo systemctl start create_ap"
alias di="sudo systemctl stop create_ap"
alias ri="sudo systemctl restart create_ap"
alias si="sudo systemctl status create_ap"
alias uw="sudo rfkill unblock wifi"
alias nis="npm install --save"
alias nisd="npm install --save-dev"
alias ni="npm install"
alias nit="npm init"
alias nig="npm install -g"
alias gt="git init"
alias gc="git commit -am"
alias gs="git status"
alias gp="git push"
alias gl="git log --pretty=oneline"
alias vba="vim ~/.bash_aliases"
alias vrc="vim ~/.vimrc"
alias vbrc="vim ~/.bashrc"
alias re="source ~/.bashrc"

function c {
  clang -Wall -g $1.c -o $1 && ./$1
}

function c+ {
  clang++ -lstdc++ -std=c++1y -o $1 $1.cpp && ./$1
}




