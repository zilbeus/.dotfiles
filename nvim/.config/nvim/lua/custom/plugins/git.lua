return {
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
		tag = "v0.0.1",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"nvim-telescope/telescope.nvim",
		},
		config = true,
	},
	{
		"sindrets/diffview.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		opts = {
			use_icons = true,
			enhanced_diff_hl = true,
		},
		config = function()
			vim.opt.fillchars = vim.opt.fillchars + "diff:╱" -- Kitty terminal could solve this issue
			-- vim.opt.fillchars = vim.opt.fillchars + "diff:-"
		end,
	},
	{
		"FabijanZulj/blame.nvim",
	},
}
