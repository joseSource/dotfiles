-- general
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "spacegray"

lvim.builtin.compe.autocomplete = true

-- keymappings
lvim.leader = "space"

lvim.builtin.dashboard.active = false
lvim.builtin.terminal.active = true

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

lvim.lang.python.formatter.exe = "black"
lvim.lang.python.linters = ""

lvim.lsp.diagnostics.virtual_text = false

-- Additional Plugins
lvim.plugins = {
	{ "lunarvim/colorschemes" },
	{ "folke/tokyonight.nvim" },
	{
		"ray-x/lsp_signature.nvim",
		config = function()
			require("lsp_signature").on_attach()
		end,
		event = "InsertEnter",
	},
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
