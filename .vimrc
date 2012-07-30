
" Pathogen
call pathogen#infect()

" Indents
filetype plugin indent on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" New text wraps at 72 characters - Eg, vipgq
" set tw=72

" Color
syntax on 
set background=light
let g:solarized_termcolors=256
colorscheme solarized

" Make backspace work like most other apps
set backspace=2

" Line numbering on 
set nu

" Autocompletes
autocmd FileType css  set omnifunc=csscomplete#CompleteCSS
autocmd FileType less set omnifunc=csscomplete#CompleteCSS

" Turn word wrap off
set nowrap

" Highlight search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Always show the status line
set laststatus=2

" no backups! 
set nobackup
set noswapfile

" Disable folding
set nofoldenable

" http://stackoverflow.com/questions/3486747/run-the-commandtflush-command-when-a-new-file-is-written
augroup CommandTExtension
    autocmd!
    autocmd FocusGained * CommandTFlush
    autocmd BufWritePost * CommandTFlush
augroup END

" no beep
set visualbell
set noerrorbells

" disabling all kinds of smartness and just pasting a whole buffer of text
set pastetoggle=<F2>


