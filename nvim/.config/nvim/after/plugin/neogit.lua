require("neogit").setup({
	graph_style = "unicode",
	signs = {
		hunk = { "", "" },
		item = { "", "" },
		section = { "", "" },
	},
	integrations = {
		telescope = false,
		diffview = true,
		fzf_lua = true,
		mini_pick = false,
	},
})
