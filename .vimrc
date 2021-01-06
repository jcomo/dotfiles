" plugins
call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'godlygeek/tabular'
Plug 'jlanzarotta/bufexplorer'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'mxw/vim-jsx'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/seoul256.vim'
Plug 'janko/vim-test'
call plug#end()

" Basics
set nocp
syntax enable
filetype plugin indent on
set showmode
set showcmd
set spelllang=en_us
set hidden
set modeline
set modelines=5
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
let mapleader="\\"
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
set tabstop=2
set shiftwidth=2
set softtabstop=2
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

" Color scheme
" let g:onedark_termcolors=16
" colorscheme onedark
"
" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 233
colo seoul256

" Disable cursor line for performance reasons
set nocursorline

" ALE
let g:ale_linters = {
      \   'python': ['flake8'],
      \   'go': ['gopls'],
      \}

let g:ale_fixers = {
      \    'python': ['black'],
      \    'sql': ['sqlformat'],
      \    'terraform': ['terraform'],
      \}

let g:ale_fix_on_save = 1

" ------------------------------------
" BEGIN: CoC (Conqueror of Completion)
" ------------------------------------

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <leader>rn <Plug>(coc-rename)

" ----------------------------------
" END: CoC (Conqueror of Completion)
" ----------------------------------

" vim-test
let test#strategy = "neovim"

if has('nvim')
  " Use C-o to get into normal mode to scroll in test execution pane
  tmap <C-o> <C-\><C-n>
endif

nmap <silent> <leader>rf :TestNearest<CR>
nmap <silent> <leader>rb :TestFile<CR>
nmap <silent> <leader>rl :TestLast<CR>

" golang
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" NERD tree
map <C-n> :NERDTreeToggle<CR>
" autoclose if NERD tree only buffer remaining
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Typescript & Vanilla JS React
autocmd BufNewFile,BufRead *.js set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.jsx

" Python
autocmd BufNewFile,BufRead *.py set foldmethod=indent nofoldenable

" ctrl-p
let g:ctrlp_map = '<C-p>'
let g:ctrlp_max_height = 8
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" vim-go
map <leader>gr :GoRun<CR>
map <leader>gb :GoBuild<CR>

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" tabular
map <leader>b   :Tab<space>/
map <leader>b:  :Tab<space>/:<CR>
map <leader>b=  :Tab<space>/=<CR>
