au BufRead,BufNewFile *.asm   set ft=nasm
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2

autocmd filetype python nnoremap <F4> :w <bar> exec '!python3 '.shellescape('%')<CR>
autocmd filetype perl nnoremap <F4> :w <bar> exec '!perl '.shellescape('%')<CR>
autocmd filetype php nnoremap <F4> :w <bar> exec '!php '.shellescape('%')<CR>
autocmd filetype ocaml nnoremap <F4> :w <bar> exec '!ocaml '.shellescape('%')<CR>
autocmd filetype ruby nnoremap <F4> :w <bar> exec '!ruby '.shellescape('%')<CR>
autocmd filetype julia nnoremap <F4> :w <bar> exec '!julia '.shellescape('%')<CR>
autocmd filetype go nnoremap <F4> :w <bar> exec '!go run '.shellescape('%')<CR>
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc -std=c11 -Wall -Werror -pedantic '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ -std=c++14 -Wall -Werror -pedantic '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype rust nnoremap <F4> :w <bar> exec '!rustc '.shellescape('%').' && ./'.shellescape('%:r')<CR>
