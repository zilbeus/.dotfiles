require("fzf-lua").setup({
	defaults = {
		file_icons = true,
		formatter = "path.filename_first",
	},
	fzf_opts = {
		["--margin"] = 0,
	},
	winopts = {
		height = 0.95,
		width = .7,
		row = 0.5,
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
			border = "single",
			vertical = "up:45%",
			layout = "vertical",
			title_pos = "left",
		},
	},
	hls = {
		border = "FzfLuaBorder",
		preview_border = "FzfLuaBorderPreview",
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
