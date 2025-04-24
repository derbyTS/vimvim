" Line numbers
set number
set relativenumber

" Tabs and indentation
set tabstop=4
set shiftwidth=4
set noexpandtab
set autoindent

" Scrolling
set scrolloff=8

" Highlight trailing whitespace in normal mode
function! SetExtraWhitespaceHighlight()
    if mode() ==# 'n'
        highlight ExtraWhitespace ctermbg=1 guibg=#EED7DC
        match ExtraWhitespace /\s\+$/
    endif
endfunction

" Disable Ex mode shortcut
nnoremap Q <nop>

" Clear search highlighting
nnoremap <leader>nh :nohlsearch<CR>

" Delete character without copying to register
nnoremap x "_x

" Highlight trailing whitespace when leaving insert mode
autocmd InsertLeave * call SetExtraWhitespaceHighlight()
autocmd InsertEnter * match none

" Move selected lines up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Word navigation in insert mode
inoremap <C-w> <Right><C-o>w
inoremap <C-b> <Left><C-o>b

" Toggle wrap
nnoremap <silent> <leader>wr :set wrap!<CR>

" Paste without copying deleted text
xnoremap <leader>p "_dP

" Yank to system clipboard
vnoremap <leader>y "+ygv
nnoremap <leader>Y "+Ygv

" Delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Set leader key
let mapleader = " "

