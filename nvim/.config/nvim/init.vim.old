call plug#begin('~/.local/share/nvim/plugged')

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'mhinz/vim-startify'
Plug 'simrat39/symbols-outline.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'folke/trouble.nvim', {'branch': 'main'}
Plug 'folke/lsp-colors.nvim', {'branch': 'main'}
Plug 'williamboman/nvim-lsp-installer', {'branch': 'main'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sindrets/diffview.nvim', {'branch': 'main'}
Plug 'marko-cerovac/material.nvim', {'branch': 'main'}
Plug 'folke/which-key.nvim', {'branch': 'main'}
Plug 'winston0410/cmd-parser.nvim'
Plug 'winston0410/range-highlight.nvim'
Plug 'hrsh7th/cmp-nvim-lsp', {'branch': 'main'}
Plug 'hrsh7th/cmp-buffer', {'branch': 'main'}
Plug 'hrsh7th/cmp-path', {'branch': 'main'}
Plug 'hrsh7th/cmp-cmdline', {'branch': 'main'}
Plug 'hrsh7th/nvim-cmp', {'branch': 'main'}

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
set noshowmode

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
let g:tokyonight_style = "night"

let g:indent_blankline_char = '¦'
colorscheme tokyonight

hi CursorLineNr guifg=goldenrod2
set guicursor=a:hor20-Cursor

lua << EOF
require'lualine'.setup {
  options = {
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    theme = 'tokyonight'
  },
  sections = {
    lualine_a = {
      {
        'mode',
        icons_enabled = true,
        icon = ''
      }
    },
    lualine_b = {'filename', 'diff', 'diagnostics'},
    lualine_c = {'branch'},
    lualine_x = {'encoding'},
    lualine_y = {'filetype'},
    lualine_z = {
      {
        'location',
        icons_enabled = true,
        icon = ''
      }
    }
  }
}
EOF

lua << EOF
require'gitsigns'.setup {
  numhl = true,
  linehl = true,
  current_line_blame = true
}
EOF

lua << EOF
require'trouble'.setup {}
EOF

lua << EOF
vim.g.symbols_outline = {
  show_numbers = true
}
EOF

lua << EOF
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
  local opts = {}
  server:setup(opts)
end)
EOF

lua << EOF
require('indent_blankline').setup {
  show_current_context = true,
  show_current_context_start = true
}
EOF

lua << EOF
require('which-key').setup {}
EOF

lua << EOF
require('range-highlight').setup {}
EOF

lua << EOF
require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true
  }
}
EOF

lua << EOF
require('cmp').setup {}
EOF

