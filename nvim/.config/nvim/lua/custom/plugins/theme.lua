return {
	{
		"mcchrish/zenbones.nvim",
		dependencies = {
			"rktjmp/lush.nvim",
		},
		opts = {
			transparent_background = true,
		},
		config = function() end,
	},
	{
		"nvim-lualine/lualine.nvim",
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		tag = "v3.5.4",
		main = "ibl",
		opts = {
			-- chars = '│',
			-- show_trailing_blankline_indent = true,
			-- show_current_context = true,
		},
	},
	{
		"b0o/incline.nvim",
	},
}
