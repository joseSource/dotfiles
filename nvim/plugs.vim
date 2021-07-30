call plug#begin('~/.vim/plugged')

  "colors
	Plug 'lifepillar/vim-gruvbox8'
  Plug 'morhetz/gruvbox'
	Plug 'sainnhe/gruvbox-material'

  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'Xuyuanp/nerdtree-git-plugin'
	
	"which key and keymaps plugs
	Plug 'folke/which-key.nvim'

  "commenter
  Plug 'scrooloose/nerdcommenter'

	" 
  Plug 'easymotion/vim-easymotion'
	"Plug 'vim-airline/vim-airline'
	"Plug 'vim-airline/vim-airline-themes'
	Plug 'lifepillar/vim-gruvbox8'
	Plug 'lilydjwg/colorizer'

	"telescope things.."
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  "lsp autocomplete" 
	Plug 'ray-x/lsp_signature.nvim'
	Plug 'nvim-lua/completion-nvim'
	Plug 'neovim/nvim-lspconfig'
	Plug 'kabouzeid/nvim-lspinstall'
	Plug 'hrsh7th/nvim-compe'
	Plug 'jiangmiao/auto-pairs'
	Plug 'glepnir/lspsaga.nvim'
	Plug 'sbdchd/neoformat'


	Plug 'glepnir/galaxyline.nvim', { 'branch': 'main' }
  Plug 'kyazdani42/nvim-web-devicons'  " needed for galaxyline icons
	Plug 'tjdevries/manillua.nvim'
	Plug 'tjdevries/nlua.nvim'
	Plug 'euclidianAce/BetterLua.vim'


	"snippets
	Plug 'hrsh7th/vim-vsnip'
	Plug 'windwp/nvim-autopairs'
	Plug 'hrsh7th/vim-vsnip'
	Plug 'nvim-lua/diagnostic-nvim'
	Plug 'hrsh7th/vim-vsnip-integ'
	Plug 'golang/vscode-go'
	Plug 'rafamadriz/friendly-snippets'
 	Plug 'honza/vim-snippets'
  "Plug '9mm/vim-closer'

	Plug 'cstrap/python-snippets'
	"Plug 'xabikos/vscode-javascript'
	Plug 'joshnh/HTML-Snippets'
	"Plug 'SirVer/ultisnips'

	call plug#end()
