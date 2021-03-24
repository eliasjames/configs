set nocompatible
set ruler
set showmode
"set textwidth=80
set showmatch
set ignorecase
set autoindent
set autowrite

set splitbelow
set splitright

set tabstop=2
set shiftwidth=2
set expandtab

syntax on

:command Pasta set paste

"unmap <C-V>

ab teh the
ab fro for


" press gi followed by a character will insert that character at cursor
map gi i<space><esc>r

"hold down Ctrl and move between windows with the standard Vim movement keys.
map <C-Down> <C-W>j<C-W>_
map <C-Up> <C-W>k<C-W>_

"display 0 lines of each minimized file
set wmh=0

" use - to jump between windows
map - <c-w>w

" syntax highlighting for modern JS
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'posva/vim-vue'
call vundle#end()            " required
filetype plugin indent on    " required
au BufNewFile,BufRead *.es6 set filetype=javascript
au BufNewFile,BufRead *.ts set filetype=javascript
au BufNewFile,BufRead *.vue set filetype=vue

" highlight whitespace at EOL unless currently editing
autocmd InsertEnter * syn clear EOLWS | syn match EOLWS excludenl /\s\+\%#\@!$/
autocmd InsertLeave * syn clear EOLWS | syn match EOLWS excludenl /\s\+$/
highlight EOLWS ctermbg=red guibg=red 
