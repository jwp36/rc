"TO INSTALL VUNDLE
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim



"VUNDLE CONFIGURATION
set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'

call vundle#end()            
filetype plugin indent on    

"NERDTREE CONFIGURATION
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"PERSONAL CONFIGURATION 
colorscheme default
syntax enable "Enable Syntax processing

set tabstop=4 "Spaces per tab for reading
set softtabstop=4 "Spaces per tab editing
set expandtab "Transform all tabs into spaces
set shiftwidth=4 "Spaces per tab when shifting

set number "Show line numbers
set cursorline "Highlight the current line
set ruler "Always show the ruler

set wildmenu "Visual autocomplete for commands

set showmatch "Highlight matching brackets, parenthesis, etc.

set incsearch "Search as characters are entered
set hlsearch "Highlight matches
