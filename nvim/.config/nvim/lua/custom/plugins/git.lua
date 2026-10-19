return {
	{
		"esmuellert/codediff.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		cmd = "CodeDiff",
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "│" },
				change = { text = "│" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		},
	},
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"dlyongemallo/diffview-plus.nvim",
			"nvim-telescope/telescope.nvim",
		},
	},
	{
		"dlyongemallo/diffview-plus.nvim",
	},
	{
		"FabijanZulj/blame.nvim",
	},
}
