# Commands
alias ed="ed -p\*\ "

# APT
alias ai="sudo apt install -y"
alias au="sudo apt update -y && sudo apt upgrade -y"
alias ar="sudo apt remove"

# Pacman
alias pi="sudo pacman -S"
alias pu="sudo pacman -Syu"
alias pr="sudo pacman -R"

# Yaourt
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
alias gc="git commit -S -am"
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

