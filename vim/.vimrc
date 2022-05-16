set nocompatible    " Be iMproved
filetype plugin on

" Enable Syntax
syntax on

" Enable line numbering
set nu

" Show the line and column number
set ruler

" Enable mouse
set mouse=a

" Highlight current line
set cursorline
:highlight Cursorline cterm=bold ctermbg=0

" Set character set as UTF-8
set encoding=utf-8

" Enable smartcase search sensitivity
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

" FINDING FILES:

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" USE:
" - Hit tab to :find by partial matching
" - Use * to make it fuzzy
" :b lets you autocomplete any open buffer

" AUTOCOMPLETE:

" The documentation is in |ins-completion|

" USE:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with path)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option
" - Use ^n and ^p to go back and forth in the suggestion lists

" FILE BROWSING:

" Tweaks for browsing
let g:netrw_banner=0       "disable annoying banner
let g:netrw_browse_split=4 "open in prior window
let g:netrw_altv=2         "open splits to the right
let g:netrw_lifestyle=3    "tree view
let g:netrw_list_hide=netrw_gitignore#Hide()

" USE:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings
