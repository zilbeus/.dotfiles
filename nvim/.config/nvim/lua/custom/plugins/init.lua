return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
	},
	"luukvbaal/statuscol.nvim",
	"tpope/vim-fugitive",
	"tpope/vim-sleuth",
	{
		"LintaoAmons/bookmarks.nvim",
		dependencies = {
			{ "kkharji/sqlite.lua" },
			{ "stevearc/dressing.nvim" },
		},
		config = function()
			local opts = {}
			require("bookmarks").setup(opts)
		end,
	},
	{
		"SmiteshP/nvim-navic",
		dependencies = { "neovim/nvim-lspconfig" },
	},
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"saghen/blink.cmp",
		version = "v0.11.0",
		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			keymap = { preset = "default" },
			completion = {
				menu = {
					border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
					winhighlight = "Normal:Pmenu,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:Search",
					draw = {
						columns = { { "kind_icon" }, { "label", "label_description", gap = 1 }, { "kind" } },
						components = {
							label = {
								width = { fill = true, max = 120 },
							},
							label_description = {
								width = { fill = true, max = 120 },
							},
							kind = {
								text = function(ctx)
									return "[" .. ctx.kind .. "]"
								end,
							},
						},
					},
				},
			},
			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "normal",
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer", "dadbod" },
				providers = {
					dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
				},
				min_keyword_length = function(ctx)
					return ctx.trigger.kind == "trigger_character" and 0 or 3
				end,
			},
		},
		opts_extend = { "sources.default" },
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },

		-- example using `opts` for defining servers
		opts = {
			servers = {},
		},
		config = function(_, opts)
			local lspconfig = require("lspconfig")
			for server, config in pairs(opts.servers) do
				-- passing config.capabilities to blink.cmp merges with the capabilities in your
				-- `opts[server].capabilities, if you've defined it
				config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
				lspconfig[server].setup(config)
			end
		end,

		-- example calling setup directly for each LSP
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig["lua-ls"].setup({ capabilities = capabilities })
		end,
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
		"mfussenegger/nvim-jdtls",
		dependencies = {
			"mfussenegger/nvim-dap",
		},
	},
	{
		"echasnovski/mini.nvim",
		version = false,
		config = function()
			require("mini.files").setup()
		end,
	},
	{
		"kevinhwang91/nvim-bqf",
	},
	{
		"mbbill/undotree",
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
	{
		"nanozuki/tabby.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"epwalsh/obsidian.nvim",
		version = "*",
		lazy = true,
		ft = "markdown",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"0xAdk/full_visual_line.nvim",
		keys = "V",
		opts = {},
	},
	{
		"RRethy/vim-illuminate",
	},
	{
		"mistweaverco/kulala.nvim",
		keys = {
			{ "<leader>Rs", desc = "send request" },
			{ "<leader>Ra", desc = "send all requests" },
			{ "<leader>Rb", desc = "open scratchpad" },
		},
		ft = { "http", "rest" },
		opts = {
			global_keymaps = true,
			global_keymaps_prefix = "<leader>R",
			kulala_keymaps_prefix = "",
		},
	},
}
