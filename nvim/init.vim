
call plug#begin('~/.vim/plugged')

  "colors
  Plug 'lifepillar/vim-gruvbox8'
  Plug 'morhetz/gruvbox'
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  "autocomplete
  Plug 'scrooloose/nerdcommenter'

	"themes 
	Plug 'maximbaz/lightline-ale'
	Plug 'itchyny/lightline.vim'
	Plug 'folke/lsp-colors.nvim'
	"Plug 'vim-airline/vim-airline'
	"Plug 'vim-airline/vim-airline-themes'
  Plug 'easymotion/vim-easymotion'

	"telescope things.."
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  "trying lsp autocomplete" 
	Plug 'neovim/nvim-lspconfig'
	Plug 'kabouzeid/nvim-lspinstall'
	Plug 'hrsh7th/nvim-compe'
	Plug 'jiangmiao/auto-pairs'
    Plug 'hrsh7th/vim-vsnip'
	Plug 'glepnir/lspsaga.nvim'
    Plug 'hrsh7th/vim-vsnip-integ'
	Plug 'sbdchd/neoformat'

call plug#end()

source ~/.config/nvim/default.vim
source ~/.config/nvim/maps.vim
source ~/.config/nvim/compe-config.vim
source ~/.config/nvim/compe-config.lua
																					"source lualine file when needed
"source ~/.config/nvim/lualine.lua

