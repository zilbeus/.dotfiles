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
		nvim_cmp = false,
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
	disable_frontmatter = true,
	note_id_func = function(title)
		return title
	end,
})

vim.api.nvim_create_user_command("ObsidianNewNoteFromTemplate", function()
	vim.cmd("ObsidianNew")
	vim.cmd("normal! ggdG")
	vim.cmd("ObsidianTemplate")
end, {})
