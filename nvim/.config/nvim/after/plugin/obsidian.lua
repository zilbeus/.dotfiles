require("obsidian").setup({
	workspaces = {
		{
			name = "main",
			path = "$HOME/.pkm",
		},
	},
	daily_notes = {
		folder = "05_DAILY_NOTES",
		date_format = "%Y-%m-%d",
	},
	completion = {
		nvim_cmp = true,
		min_chars = 2,
	},
	new_notes_location = "00_INBOX",
	templates = {
		folder = "99_ETC/templates",
		date_format = "%Y-%m-%d",
		time_format = "%H:%M",
	},
	picker = {
		name = "telescope.nvim",
	},
	ui = {
		enable = false,
	},
	attachments = {
		img_folder = "99_ETC/attachments",
	},
})
