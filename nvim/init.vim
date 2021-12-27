" Pluggins """{{{
" ---------------------------------------------------------------------

call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'tpope/vim-rhubarb'

Plug 'cohama/lexima.vim'

if has("nvim")

    Plug 'dracula/vim', { 'as': 'dracula' } "Theme

    Plug 'nvim-lua/plenary.nvim' "Telescope requires plenary to function

    Plug 'nvim-telescope/telescope.nvim' "The main Telescope plugin

    Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' } "An optional plugin recommended by Telescope docs

    Plug 'itchyny/lightline.vim' "A beautiful lightbar

    Plug 'tpope/vim-fugitive' "Git inside vim

    Plug 'lewis6991/gitsigns.nvim' "Modified git file inside vim

    Plug 'neovim/nvim-lspconfig' "lsp server for python and type script.

    Plug 'glepnir/lspsaga.nvim'

    Plug 'windwp/nvim-autopairs'

    "Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' } "Python syntax
    
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

    Plug 'kyazdani42/nvim-web-devicons'

    Plug 'hoob3rt/lualine.nvim'

endif

call plug#end()


lua require('kranch/init')


"}}}

" Fundamentals "{{{
" ---------------------------------------------------------------------

set hlsearch
set showcmd


" enables syntax highlighting
syntax on

" Better colors
set termguicolors

" number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab

" enable autoindents
set smartindent

" number of spaces used for autoindents
set shiftwidth=4

" adds line numbers
set number

" columns used for the line number
set numberwidth=4

" highlights the matched text pattern when searching
set incsearch
set nohlsearch

" open splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

set noshowmode

set signcolumn=number

" Add asterisks in block comments
set formatoptions+=r

"}}}

" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  "set background=dark

  " Use NeoSolarized

  let g:neosolarized_termtrans=1
  runtime ./colors/deepsea.vim
  colorscheme dracula
  hi Normal guibg=NONE ctermbg=NONE
  hi LineNr guibg=NONE ctermbg=NONE
  hi SignColumn guibg=NONE ctermbg=NONE
  hi EndOfBuffer guibg=NONE ctermbg=NONE
endif

"}}}

" mapping "{{{
" ---------------------------------------------------------------------

" Telescope
nnoremap  <silent> ;f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <silent> ;r <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap  <silent> ;b <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

"LSPsaga

nnoremap <silent> <C-j> :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap <silent> gh :Lspsaga lsp_finder<CR>
nnoremap <silent> gp :Lspsaga preview_definition<CR>

"}}}


