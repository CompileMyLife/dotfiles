set nocompatible    " Be iMproved
filetype plugin on
filetype plugin indent on

" Enable Syntax
syntax on

" Enable line numbering
set nu

" Show the line and column number
set ruler

" Enable mouse
set mouse=a

" Limit the bottom end of the page to be 10 lines away
set scrolloff=10

" Enable Cursor line
set cursorline

" Enable Color Column
set colorcolumn=79

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

" Enable hi searching pattern
set hlsearch

" Enable show matches while typing to search 
set incsearch

" Shows the matching part of pairs [], {}, and ()
set showmatch

" Let the <Leader> key to be 'spacebar'
let mapleader=" "

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

set completeopt=longest,menuone

" Autocmds for autocompletion with <c-x><c-o> 
autocmd FileType html setl omnifunc=htmlcomplete#CompleteTags
autocmd FileType css setl omnifunc=csscomplete#CompleteCSS
autocmd FileType c setl omnifunc=ccomplete#CompleteCpp
autocmd FileType python setl omnifunc=syntaxcomplete#Complete
" USE:
" - CTRL-x-CTRL-n for JUST this file
" - CTRL-x-CTRL-f for filenames (works with path)
" - CTRL-x-CTRL-] for tags only
" - CTRL-n for anything specified by the 'complete' option
" - Use CTRL-n and CTRL-p to go back and forth in the suggestion lists

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

" TAG JUMPING:

" Create the 'tags' file (may need to install ctags first)
command! MakeTags !ctags -R .

" USE:
" - Use CTRL-] to jump to tag under cursor
" - Use g-CTRL-] for ambiguous tags
" - Use CTRL-t to jump back up the tag stack
" - Use CTRL-o to jump back to initial file you started from

" NOTE:
" - This doesn't help if you want a visual list of tags

" SNIPPETS:

" html-template
nnoremap <Leader> html:-1read $HOME/.vim/snippets/html-template.html<CR>

set termguicolors 
colorscheme desert

hi Cursorline cterm=NONE ctermbg=0 guibg=black
hi ColorColumn cterm=NONE ctermfg=0 guibg=black
hi StatusLine cterm=NONE guibg=tan
