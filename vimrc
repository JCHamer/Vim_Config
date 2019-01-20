set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"NERDTree
"Plugin 'scrooloose/nerdtree'

"vim airline - status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Allow for relative linu numbers when in focus and in normal mode
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

"vim surround
Plugin 'tpope/vim-surround'

"C++ Advanced Syntax Highlighting
Plugin 'octol/vim-cpp-enhanced-highlight'

"YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

"Auto Pairs
Plugin 'jiangmiao/auto-pairs'

"Vim Indent Guides
"Plugin 'nathanaelkane/vim-indent-guides'

""""""""""""""""""""""""""""""""""""""""
" COLOR SCHEMES

" See colors by running :XtermColorTable
Plugin 'guns/xterm-color-table.vim'

Plugin 'dylanaraps/wal.vim'

"Plugin 'nanotech/jellybeans.vim'
"Plugin 'junegunn/seoul256.vim'
"Plugin 'ciaranm/inkpot'
"Plugin 'zeis/vim-kolor'
"Plugin 'tomasr/molokai'
"Plugin 'jnurmine/Zenburn'
"Plugin 'dracula/vim'
"Plugin 'tyrannicaltoucan/vim-quantum'
"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set number

set tabstop=4
set softtabstop=4
set shiftwidth=4

set cursorline
set mouse=a

set autoindent
set cindent
syntax on

" Turn on spelling for tex and txt files
autocmd BufEnter *.tex set spell spelllang=en_us
autocmd BufEnter *.txt set spell spelllang=en_us

" Color Settings

set background=dark
"set termguicolors

colorscheme wal

"set cc=80
"highlight ColorColumn ctermfg=138 ctermbg=240
"highlight Normal ctermfg=253 ctermbg=0
highlight Normal guibg=NONE ctermfg=253 ctermbg=NONE
highlight CursorLine ctermfg=253 ctermbg=235

" Airline Stuff
let g:airline_theme='violet'
let g:airline_powerline_fonts = 1
set laststatus=2

set splitright
set splitbelow

" Remap split movement to Ctrl-jklh, instead of Ctrl-w, then ctrl-j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable normal paste
"set paste

" YouCompleteMe Settings
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
