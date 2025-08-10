require("noice").setup({
	views = {
		notify = {
			replace = true,
		},
	},
	cmdline = {
		enabled = true,
		view = "cmdline",
	},
	lsp = {
		progress = {
			view = "notify",
		},
		signature = {
			enabled = true,
		},
	},
	presets = {
		bottom_search = true,
		lsp_doc_border = true,
		command_palette = true,
		inc_rename = true,
		long_message_to_split = true,
	},
	routes = {
		{
			filter = {
				event = "msg_show",
				kind = "",
				find = "written",
			},
			opts = {
				skip = true,
			},
		},
	},
})

require("notify").setup({
	on_open = function(win)
		local config = vim.api.nvim_win_get_config(win)
		config.border = "single"
		vim.api.nvim_win_set_config(win, config)
	end,
	fps = 30,
	stages = "no_animation",
})
