" vim, not vi
set nocompatible

" vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" plugins
Bundle 'gmarik/vundle'
Bundle 'hdima/python-syntax'
Bundle 'wincent/Command-T'

" General
filetype plugin indent on " do file-type and language specific indenting etc.
set vb                    " use visual bell
set ruler                 " display column position
set number                " show row numbers
set showcmd               " display incomplete commandsset textwidth=79          " wrap text and insert linebreaks after 79 chars
set tabstop=4             " tabs are displayed as 4 spaces
set softtabstop=4         " help editing too
set shiftwidth=4          " default to a 4 space indent
set expandtab             " convert tab keystroke into shiftwidth spaces
set history=50            " number of remembered command lines

" Color
syntax enable             " syntax highlighting
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized

" autocommands
if has("autocmd")
  autocmd BufRead,BufNewFile *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
endif
