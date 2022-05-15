" Enable Syntax
syntax on

" Enable line numbering
set nu

" Enable mouse
set mouse=a

" Set character set as UTF-8
set encoding=utf-8

" Enable smaracse serach sensitivity
set ignorecase
set smartcase

" textwidth:    text wrap width
" tabstop:      width of tab character
" shiftwidth:   determines the amount of whitespace to add in normal mode
" softtabstop:  fine tunes the amount of whitespace to be added
" expandtab:    when on, uses spaces instead of tab
" backspace:    allows backspacing for indents, end of lines, and the start
" laststatus:   shows the status of your current line, line number, and file
set textwidth=79
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start
set autoindent
set laststatus=2                " 2 displays status line always

" Enable highlight searching pattern
set hlsearch

" Enable show matches while typing to search 
set incsearch

" Shows the matching part of pairs [], {}, and ()
set showmatch
