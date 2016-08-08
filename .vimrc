set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin() " alternatively, pass a path where Vundle should install plugins "
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Hey Thurnis!
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'

" Hey Thurnis.
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Thurnis. Hey Thurnis.
" Install L9 and avoid a Naming conflict if you've already installed a " different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

" Sidebar directories and files
"Plugin 'scrooloose/nerdtree'

" brrrrap
" Highlights letters in current line for easier f/F/t/T traversal
Plugin 'unblevable/quick-scope'

" Sets indent levels to what is detected in current file
Plugin 'tpope/vim-sleuth'

" Better status bar
Plugin 'bling/vim-airline'

" fuzzy file opener
Plugin 'ctrlpvim/ctrlp.vim'

" end/endif for vim
Plugin 'tpope/vim-endwise'

" bunch of rails specific stuff
Plugin 'tpope/vim-rails'

"autocmd bufenter * AirlineToggle

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ " Put your non-Plugin stuff after this line

" Activate NERDTree plugin
" Start NERDTree
"autocmd VimEnter * NERDTree
" Jump to the main window.
"autocmd VimEnter * wincmd p
" Close NERDTree if it's the last open window autocmd bufenter
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Customization file -- brad frost -- last edited: 7/25/16 " colors
syntax enable       " enable syntax processing
colorscheme monokai " monokai colorscheme
 
" spaces & tabs
set tabstop=2       " number of visual spaces per tab
set softtabstop=2   " number of spaces in tab while editing
set shiftwidth=2    " number of spaces inserted for indentation
set expandtab       " tabs are spaces
 
" vim ui config
set number          " show line numbers
set showcmd         " show command in buttom bar
set cursorline      " show current line editing
filetype indent on  " load filetype-specific indent files
set wildmenu        " visual autocomplete for command menu
set lazyredraw      " redraw only when we need to
set showmatch       " highlight matching [{()}]
set title           " set title of terminal
set visualbell      " remove sounds
set noerrorbells    " remove error sounds
set history=1000    " set longer command history storing
set undolevels=1000 " set longer undo history set wildignore=*.swp,*.bak,*.pyc,*.class "ignore compiled files
set smarttab        " indenting will go to the expected indentation level
set matchpairs+=<:> " match brackets in HTML
set ignorecase      " ignore case when searching
set hlsearch        " highlight all search results
set incsearch       " begin searching immediately as you type
set timeoutlen=100
set colorcolumn=80  " show a ruler at the 80th column
set wildchar=<Tab> wildmenu wildmode=full
 
" search
set incsearch       " search as chars are entered
set hlsearch        " highlight matches
nnoremap ,<space> :nohlsearch<CR>        " turn off search highlight
 
" folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
nnoremap <space> za     " space open/closes folds   " remaps fold from za to space
 
" movement
nnoremap j gj
nnoremap k gk
" Map 0 to ^ for easy access to first non-blank character at the beginning of
" a line.
noremap 0 ^
noremap ^ 0
" Use normal regex instead of Vim's custom one
"noremap / /\v
" Go to command mode
noremap <cr> :
" Leave Ex mode--for good
nnoremap Q <nop>

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" airline settings
set ttimeoutlen=50
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" ctrl-p settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_working_path_mode = 'ra'

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
  "\ 'dir':  '\v[\/]\.(git|hg|svn)$',
  "\ 'file': '\v\.(exe|so|dll)$',
  "\ }
