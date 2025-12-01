require("fzf-lua").setup({
	defaults = {
		prompt = "",
		file_icons = true,
		formatter = "path.filename_first",
	},
	fzf_opts = {
		["--margin"] = 0,
	},
	fzf_colors = {
		["hl"] = "#8abae1",
	},
	winopts = {
		height = 0.9,
		width = 0.6,
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
			vertical = "up:55%",
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
		RIPGREP_CONFIG_PATH = vim.env.RIPGREP_CONFIG_PATH,
		resume = true,
		multiline = 2,
		winopts = {
			preview = {
				border = "single",
				vertical = "up:45%",
				layout = "vertical",
				title_pos = "left",
			},
		},
		fzf_colors = {
			["hl"] = "#8abae1",
		},
		actions = {
			["ctrl-q"] = { fn = require "fzf-lua".actions.file_sel_to_qf, prefix = "select-all" }
		}
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
