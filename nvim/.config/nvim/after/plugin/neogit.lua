require("neogit").setup({
	graph_style = "unicode",
	signs = {
		hunk = { "", "" },
		item = { "", "" },
		section = { "", "" },
	},
	kind = "floating",
	floating = {
		border = "single",
		width = 0.7,
		height = 0.9,
	},
	integrations = {
		telescope = false,
		diffview = true,
		fzf_lua = true,
		mini_pick = false,
	},
	commit_editor = {
		kind = "floating",
	},
	log_view = {
		kind = "floating",
	},
	preview_buffer = {
		kind = "floating",
	},
	commit_view = {
		kind = "floating",
		verify_commit = vim.fn.executable("gpg") == 1,
	},
	popup = {
		kind = "floating",
	},
})
