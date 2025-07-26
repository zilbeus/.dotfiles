require("fzf-lua").setup({
	winopts = {
		height = 0.6,
		width = 1.0,
		row = 1,
		border = "single",
		-- border = {
		-- 	"┏",
		-- 	"━",
		-- 	"┓",
		-- 	"┃",
		-- 	"┛",
		-- 	"━",
		-- 	"┗",
		-- 	"┃",
		-- },
		backdrop = 100,
		preview = {
			vertical = "up:65%",
			layout = "vertical",
			title_pos = "left",
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

require("fzf-lua").register_ui_select({
	winopts = {
		height = 0.3,
		width = 0.2,
		row = 0.5,
		col = 0.5,
	},
	fzf_opts = {
		["--layout"] = "reverse-list",
		["--info"] = "hidden",
	},
})
