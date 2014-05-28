execute pathogen#infect()

" Indents
filetype plugin indent on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent " Copy indent from the row above

" New text wraps at n characters - Eg, vipgq
set tw=150

" Color
syntax enable
set background=light
colorscheme solarized
let g:solarized_termcolors=256

" Make backspace work like most other apps
set backspace=2

" Line numbering on
set nu

" Turn word wrap off
set nowrap

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

" Tell Command-T to ignore java built directories
set wildignore+=**/target/**
set wildignore+=**/node_modules/**

" Dictionary lookup
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
set complete-=k complete+=k

" Highlight search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Always show the status line
set laststatus=2

" http://sjl.bitbucket.org/gundo.vim/
nnoremap <F5> :GundoToggle<CR>

" https://github.com/bling/vim-airline - show inactive buffers
" let g:airline#extensions#tabline#enabled = 1

" Vim looks for a tags file in the current directory first and up and up until it finds it
set tags=./tags,tags;

let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>

" The Silver Searcher - http://robots.thoughtbot.com/faster-grepping-in-vim
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" remember last line of the file you are on
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
