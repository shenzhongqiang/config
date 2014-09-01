set ru
syntax on
set sw=4
set ts=4
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin on
set autoindent
set smartindent
set number
set viminfo='10,\"100,:20,%,n~/.viminfo
function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END

highlight WhiteSpaces ctermbg=green guibg=#55aa55
match WhiteSpaces /\s\+$/
