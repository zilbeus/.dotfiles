vim.cmd([[highlight IndentScope ctermbg=0 guibg=lightgrey]])
require("ibl").setup({
	indent = {
		char = "🭰",
	},
	scope = { enabled = true, show_start = false, char = "🭰", highlight = "IndentScope" },
	exclude = {
		filetypes = {
			"toggleterm",
			"lspinfo",
			"checkhealth",
			"help",
			"man",
			"gitcommit",
			"TelescopePrompt",
			"TelescopeResults",
		},
		buftypes = { "terminal", "nofile", "quickfix", "prompt" },
	},
})
