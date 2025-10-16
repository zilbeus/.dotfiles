require("fzf-lua").setup({
	defaults = {
		file_icons = true,
		formatter = "path.filename_first",
	},
	fzf_opts = {
		["--margin"] = 0,
	},
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
		file_icons = true,
		multiprocess = true,
		formatter = "path.filename_first",
	},
	grep = {
		multiline = 2,
	},
})

require("fzf-lua").register_ui_select({
	winopts = {
		height = 0.3,
		width = 0.4,
		row = 0.5,
		col = 0.5,
	},
	fzf_opts = {
		["--layout"] = "reverse-list",
		["--info"] = "hidden",
	},
})
