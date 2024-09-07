vim.cmd([[highlight IndentScope ctermbg=0 guibg=lightgrey]])
require("ibl").setup({
	indent = {
		char = "│",
	},
	scope = { enabled = true, show_start = false, char = "│", highlight = "IndentScope" },
})
