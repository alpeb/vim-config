execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

" ---------------------------------------------------------------------
" Github colorscheme https://github.com/endel/vim-github-colorscheme
" (this is only for light colored terminals)
" ---------------------------------------------------------------------
" colorscheme github
" Needed for the github colorscheme to work under tmux
"set t_Co=256
"jhi Normal ctermbg=256
"

"taken from colorscheme photon
hi DiffAdd ctermbg=darkgray ctermfg=darkgreen cterm=NONE
hi DiffChange ctermbg=darkgray ctermfg=NONE cterm=NONE
hi DiffDelete ctermbg=darkgray ctermfg=darkred cterm=NONE
hi DiffText ctermbg=darkgray ctermfg=darkyellow cterm=NONE

set fileformats=unix,dos,mac

set bs=2

set history=1000

set hidden
set mouse=a
set incsearch
set hlsearch
set ignorecase
set smartcase
"set scrolloff=3

" indenting
set ai
set smartindent
set shiftwidth=2
set expandtab
set softtabstop=2
set tabstop=2

set ruler
set tw=0
set wrap
set enc=utf8
set laststatus=2
set number

set noswapfile

set guifont=Lucida_Console:h9:cANSI

set tabpagemax=100

"set splitbelow
set splitright

" GO
" noremap ; :GoBuild<CR>
" so that :GoBuild saves the file
set autowrite
autocmd BufWrite *.go :GoImports
autocmd FileType go nmap g¿ <Plug>(go-def-tab)
autocmd FileType go nmap g¡ <Plug>(go-def-vertical)

" disabled cuz it's erroring a lot
let g:go_auto_sameids = 0
let g:go_updatetime = 0
let g:go_doc_popup_window = 1

"set nu
hi LineNr ctermbg=248

let mapleader=" "

"open tag def in a vertical split
map <C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" open quickfix item in new vsplit
" map W gvq
"
"
set number

au BufRead,BufNewFile *.md setlocal textwidth=80

"set mousemodel=popup_setpos

" -----------
" SPELLING
" -----------
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us

" -----------
" PLUGINS
" -----------
"
"  Ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
nnoremap <Leader>f :Ack!<Space>
let g:ack_autoclose = 0

"  git-gutter
let g:gitgutter_highlight_lines = 0
set updatetime=100

"  Ctrl-p
let g:ctrlp_show_hidden=1
set wildignore+=*/target/*,*/uploads/*,*.swp,*.git,*/node_modules/*
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_clear_cache_on_exit=0

" -----------
" Key maps
" -----------
map Q :q<CR>
map O :on<CR>
nmap \o :set paste!<CR>
map <Esc>a :w<CR>
map <Esc>w :wa<CR>
map <C-l> gt
map <C-h> gT

" --------------
" Miscellanous
" --------------
cabbrev h vert h
cabbrev help vert help

" --------------
"  vimdiff
"  ------------
"  https://stackoverflow.com/questions/16840433/forcing-vimdiff-to-wrap-lines
au VimEnter * if &diff | execute 'tabdo windo set wrap' | endif

" tagbar
nmap <F8> :TagbarToggle<CR>

" --------------
" ultisnips
" DISABLED CUZ IT'S ERRORING
" --------------
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
"
:helptags ALL
