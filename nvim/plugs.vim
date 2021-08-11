
call plug#begin('~/.vim/plugged')

	" commenter syntax
	Plug 'tjdevries/vim-inyoface'

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
	Plug 'preservim/nerdcommenter'
	Plug 'tpope/vim-commentary'

	Plug 'easymotion/vim-easymotion'
	Plug 'lifepillar/vim-gruvbox8'
	Plug 'lilydjwg/colorizer'

	"telescope things.."
	" Plug 'nvim-lua/popup.nvim'
	" Plug 'nvim-lua/plenary.nvim'
	" Plug 'nvim-telescope/telescope.nvim'

	"lsp autocomplete" 
	Plug 'ray-x/lsp_signature.nvim'
	Plug 'nvim-lua/completion-nvim'
	Plug 'neovim/nvim-lspconfig'
	Plug 'kabouzeid/nvim-lspinstall'
	Plug 'hrsh7th/nvim-compe'
	Plug 'glepnir/lspsaga.nvim'
	Plug 'nvim-lua/diagnostic-nvim'

	" auto pairs and format things
	Plug 'sbdchd/neoformat'
	Plug 'windwp/nvim-autopairs'
	Plug 'jiangmiao/auto-pairs'

	" lines
	Plug 'romgrk/barbar.nvim'
	Plug 'glepnir/galaxyline.nvim', { 'branch': 'main' }
	"Plug 'vim-airline/vim-airline'
	"Plug 'vim-airline/vim-airline-themes'
	Plug 'kyazdani42/nvim-web-devicons'  " needed for galaxyline icons
	Plug 'tjdevries/manillua.nvim'
	Plug 'tjdevries/nlua.nvim'
	Plug 'euclidianAce/BetterLua.vim'


	"snippets
	Plug 'hrsh7th/vim-vsnip'
	Plug 'ambv/black'
	Plug 'hrsh7th/vim-vsnip'
	Plug 'golang/vscode-go'
	Plug 'rafamadriz/friendly-snippets'
	Plug 'cstrap/python-snippets'
	"Plug 'hrsh7th/vim-vsnip-integ'
	"Plug 'honza/vim-snippets'
	"Plug '9mm/vim-closer'
	"Plug 'xabikos/vscode-javascript'
	"Plug 'joshnh/HTML-Snippets'
	"Plug 'SirVer/ultisnips'

call plug#end()
