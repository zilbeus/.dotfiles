call plug#begin('~/.local/share/nvim/plugged')

Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ayu-theme/ayu-vim'
Plug 'sainnhe/sonokai'
Plug 'ghifarit53/tokyonight-vim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
"Plug 'glepnir/galaxyline.nvim', {'branch': 'main'}

call plug#end()

" INDENTING
set tabstop=2				                        " number of columns occupied by a tab character
set softtabstop=2			                      " set multiple spaces as tabstops so <BS> does the right thing
set expandtab				                        " converts tabs to white space
set shiftwidth=2			                      " width for autoindents
set autoindent				                      " indent a new line the same amount as the line just typed
filetype plugin indent on		                " allows auto-indenting depending on file type

" GENERAL
set nocompatible			                      " disable compatibility to old-time vi
set nowrap                                  " no line wrapping
set showmatch				                        " show matching brackets
set ignorecase				                      " case insensitive matching
set mouse=v				                          " middle-click paste with mouse
set hlsearch				                        " highlight search results
set number				                          " add line numbers
set wildmode=longest,list		                "get bash-like tab completions

" SPLITS
set splitbelow
set splitright

" KEYMAPS
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" COLORS
set cursorline                              " highlight current line
syntax on				                            " syntax highlighting
let base16colorspace=256
set termguicolors
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1
colorscheme tokyonight
hi CursorLineNr guifg=goldenrod2

set guicursor=a:hor20-Cursor

let g:airline_powerline_fonts = 1
let g:airline_theme = 'tokyonight'

let g:indent_blankline_char = '¦'

