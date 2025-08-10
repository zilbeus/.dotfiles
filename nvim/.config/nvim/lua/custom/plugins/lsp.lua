return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "williamboman/mason.nvim", config = true },
			"williamboman/mason-lspconfig.nvim",
			"folke/neodev.nvim",
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
