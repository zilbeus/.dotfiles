require("fzf-lua").setup({
	winopts = {
		height = 0.5,
		width = 1.0,
		row = 1,
		border = "single",
		backdrop = 100,
		preview = {
			vertical = "up:65%",
			layout = "vertical",
		},
	},
	hls = {
		border = "FloatBorder",
		preview_border = "FloatBorder",
	},
	keymap = {
		builtin = { true, ["<Esc>"] = "hide" },
	},
	files = {
		formatter = "path.filename_first",
	},
})
