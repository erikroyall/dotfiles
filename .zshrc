BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

stty -ixon

# Path to your oh-my-zsh installation.
export ZSH=/home/erik/.oh-my-zsh
export PATH="$PATH:$HOME/.npm-packages/bin:$HOME/bin:$HOME/.bin"
export PATH="$PATH:$HOME/.yarn/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/.cargo/bin"

function c {
  clang -Wall -g $1.c -o $1 && ./$1
}

function c+ {
  clang++ -lstdc++ -std=c++1y -o $1 $1.cpp && ./$1
}


PATH="/home/erik/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/erik/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/erik/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/erik/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/erik/perl5"; export PERL_MM_OPT;

source $HOME/.bash_aliases
