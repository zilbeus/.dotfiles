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
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
	},
	{
		"b0o/incline.nvim",
	},
}
