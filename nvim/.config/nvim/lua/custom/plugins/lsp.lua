return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "williamboman/mason.nvim", config = true },
		},
	},
	{
		"onsails/lspkind.nvim",
		opts = {},
		config = function() end,
	},
	{
		"dnlhc/glance.nvim",
	},
}
