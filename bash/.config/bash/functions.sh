function c {
  clang -Wall -Werror -pedantic -g $1.c -o $1 && ./$1
}

function c+ {
  clang++ -Wall -Werror -pedantic -lstdc++ -std=c++1y -o $1 $1.cpp && ./$1
}

