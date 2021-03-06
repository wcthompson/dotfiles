set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" color schemes
Plugin 'crusoexia/vim-monokai'

" plugins
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
if v:version > 703
  Plugin 'Valloric/YouCompleteMe'
endif
Plugin 'Xuyuanp/nerdtree-git-plugin'

" syntax files
Plugin 'digitaltoad/vim-jade'
Plugin 'elzr/vim-json'
Plugin 'nono/vim-handlebars'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-markdown'
Plugin 'voithos/vim-python-syntax'

" All of your Plugins must be added before the following line
call vundle#end()         " required
filetype plugin indent on " required

" set leader
:let mapleader = '-'

" basic config
syntax on
set number
set ruler
highlight ColorColumn ctermbg=2
set colorcolumn=121

" tabs
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2

" better moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" disable backups
set nobackup
set nowritebackup
set noswapfile

" auto start NERDTree
autocmd vimenter * NERDTree

" airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" syntastic config
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" also autosave when going to insert mode
inoremap kj <Esc>:w<CR>
inoremap jk <Esc>:w<CR>

" map semicolon to colon
nnoremap ; :

" leave showtabline as default (for now)
set showtabline=1

" searching options
set incsearch
set showcmd
set ignorecase
set smartcase
set hlsearch

" window options
set showmode
set showcmd
set ruler
set ttyfast
set backspace=indent,eol,start
set laststatus=2

" escape search highliting by hitting return
nnoremap <CR> :noh<CR><CR>

" font options
set background=dark
set t_Co=256
colorscheme monokai

" remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" ctrl p settings
" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp\|coverage$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" tabular key bindings
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:\zs<CR>
vmap <leader>a: :Tabularize /:\zs<CR>

" multiple cursor settings
let g:multi_cursor_exit_from_visual_mode=0

" keep at least 5 lines below the cursor
set scrolloff=5

" enable mouse support
set mouse=a

" close buffer when tab is closed
set nohidden

" close vim if all tabs are closed
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
