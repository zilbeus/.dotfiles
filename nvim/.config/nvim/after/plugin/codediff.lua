require("codediff").setup({
	explorer = {
		position = "bottom",
		height = 25,
	},
	keymaps = {
		view = {
			next_file = "<C-n>",
			prev_file = "<C-p>",
			next_hunk = "<A-n>",
			prev_hunk = "<A-p>",
		},
	},
})
