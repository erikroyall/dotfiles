au BufRead,BufNewFile *.asm   set ft=nasm
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2

autocmd filetype python nnoremap <F4> :w <bar> exec '!python3 '.shellescape('%')<CR>
autocmd filetype perl nnoremap <F4> :w <bar> exec '!perl '.shellescape('%')<CR>
autocmd filetype ruby nnoremap <F4> :w <bar> exec '!ruby '.shellescape('%')<CR>
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc -std=c11 -Wall -Werror -pedantic '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ -std=c++14 -Wall -Werror -pedantic '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

