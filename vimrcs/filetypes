""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
""""""""""""""""""""""""""""""""""""""""""""""""""""

" F9 to execute the .py
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""
" C
""""""""""""""""""""""""""""""""""""""""""""""""""""

" F9 to execute the .c
autocmd FileType c map <F9> : !clear && gcc -Wall % && ./a.out <CR>
