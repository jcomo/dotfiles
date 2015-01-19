" More UI stuff
let g:solarized_termcolors = 16
let g:solzarized_termtrans = 0
let base16colorspace = 256    " Access colors present in 256 colorspace

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
set ttimeoutlen=5    " no 'sticky escape'

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

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from OS X clipboard
noremap <leader>p :set paste<CR>:put *<CR>:set nopaste<CR>

" Custom commands
cmap w!! %!sudo tee > /dev/null %

" Backups
set nobackup
set noswapfile
set nowb
set autowrite
set autoread

" Indentation
set wrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
"set foldmethod=indent

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch
set infercase

" UI stuff
set noshowmode
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
set background=dark
colorscheme solarized

" Highlight the current line
set cursorline

" ctrlp config
let g:ctrlp_map = '<leader>f'
let g:ctrlp_max_height = 30
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 0

let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" silver searcher
map <leader>a :Ag!<space>

" Search for word under cursor with silver searcher
map <leader>A :Ag! "<C-r>=expand('<cword>')<CR>"

" tabular
map <leader>b   :Tab<space>/
map <leader>b:  :Tab<space>/:<CR>
map <leader>b=  :Tab<space>/=<CR>
