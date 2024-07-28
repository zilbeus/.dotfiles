return {
	"tpope/vim-fugitive",
	"tpope/vim-sleuth",

	{
		"hrsh7th/nvim-cmp",
		dependencies = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip" },
	},
	{
		"stevearc/conform.nvim",
		opts = {},
	},
	{

		"L3MON4D3/LuaSnip",
		dependencies = { "rafamadriz/friendly-snippets" },
	},
	{
		"folke/which-key.nvim",
	},

	{
		"numToStr/Comment.nvim",
		opts = {},
	},

	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	{
		"fatih/vim-go",
		config = function() end,
	},
	{
		"windwp/nvim-ts-autotag",
		config = function() end,
	},
	{
		"creativenull/efmls-configs-nvim",
		dependencies = { "neovim/nvim-lspconfig" },
	},
	{
		"nvim-java/nvim-java",
		dependencies = {
			"nvim-java/lua-async-await",
			"nvim-java/nvim-java-refactor",
			"nvim-java/nvim-java-core",
			"nvim-java/nvim-java-test",
			"nvim-java/nvim-java-dap",
			"MunifTanjim/nui.nvim",
			"neovim/nvim-lspconfig",
			"mfussenegger/nvim-dap",
			{
				"williamboman/mason.nvim",
				opts = {
					registries = {
						"github:nvim-java/mason-registry",
						"github:mason-org/mason-registry",
					},
				},
			},
		},
	},
	{
		"echasnovski/mini.nvim",
		version = false,
		config = function()
			require("mini.files").setup()
		end,
	},
}
