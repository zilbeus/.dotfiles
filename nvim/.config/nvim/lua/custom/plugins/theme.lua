return {
	{
		"projekt0n/github-nvim-theme",
		lazy = false,
		priority = 1000,
		config = function() end,
	},
	{
		"p00f/alabaster.nvim",
		priority = 1000,
		config = function() end,
	},
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
		"nyoom-engineering/oxocarbon.nvim",
		priority = 1000,
		-- config = function()
		-- 	vim.opt.background = "dark"
		-- 	vim.cmd("colorscheme oxocarbon")
		-- end,
	},
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000,
		-- config = function()
		-- 	vim.cmd.colorscheme "onedark_dark"
		-- end
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
		config = function()
			require("incline").setup({
				window = {
					margin = {
						vertical = 0,
						horizontal = 1,
					},
					padding = 0,
				},
				hide = {
					cursorline = false,
					focused_win = false,
					only_win = true,
				},
				render = function(props)
					local fname = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
					local modified_glyph = {}
					if vim.api.nvim_buf_get_option(props.buf, "modified") then
						modified_glyph = vim.tbl_extend("force", { "[+] " }, {})
					end
					if props.focused == true then
						return {
							{
								{ " " },
								fname,
								{ " " },
								modified_glyph,
								guibg = "#292929",
								guifg = "#eda601",
							},
						}
					else
						return {
							{
								{ " " },
								fname,
								{ " " },
								modified_glyph,
								guibg = "#292929",
								guifg = "#7a7a7a",
							},
						}
					end
				end,
			})
		end,
	},
}
