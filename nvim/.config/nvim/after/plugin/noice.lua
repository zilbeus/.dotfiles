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
})
