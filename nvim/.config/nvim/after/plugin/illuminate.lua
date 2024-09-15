require("illuminate").configure({
	providers = {
		"lsp",
		"treesitter",
	},
	filetypes_denylist = {},
	filetypes_allowlist = {
		"lua",
		"go",
		"java",
	},
	under_cursor = true,
	min_count_to_highlight = 2,
	case_insensitive_regex = false,
})

require("illuminate").pause()
