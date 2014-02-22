" More UI stuff
let g:solarized_termcolors = 256
let g:solzarized_termtrans = 0
let base16colorspace=256    " Access colors present in 256 colorspace

" Basics
set nocp
call pathogen#infect()
syntax enable
filetype plugin indent on
set showmode
set showcmd
set spelllang=en_us
set hidden
set modelines=0
set encoding=utf8
set backspace=indent,eol,start
set nosol
set mat=3
set wildignore+=*.o,*.obj,.git,*.pyc

set mouse=a

" Key mappings
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-s> :w<CR>
nnoremap <CR> :noh<CR><CR>
let mapleader=","
nnoremap <leader><leader> <c-^>
nnoremap <space> za

" Backups
set nobackup
set noswapfile
set nowb
set autowrite
set autoread

" Indentation
set wrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
"set foldmethod=indent

" Text formatting
set textwidth=80

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch
set infercase

" UI stuff
set shortmess=as
set wim=list:longest
set display=lastline
set number
set statusline=%-.100([%l,%v]\ %t%r%m\ %y\ [0x%B]\ %p%%%)
set laststatus=2
set list
set listchars=trail:·,precedes:·,tab:\ \ 
set novisualbell
set noerrorbells
set wmnu
set guioptions=egmt
set guifont=Source\ Code\ Pro\ for\ Powerline:h12
set background=light
colorscheme base16-ocean

" ctrlp
let g:ctrlp_working_path_mode = 0


" vimclojure
let vimclojureRoot = "~/.vim/bundle/vimclojure"
let vimclojure#HighlightBuiltins = 1
let vimclojure#HighlightContrib = 1
let vimclojure#DynamicHighlighting = 1
let vimclojure#ParenRainbow = 1
