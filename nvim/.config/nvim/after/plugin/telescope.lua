require("telescope").setup({
	defaults = {
		layout_strategy = "vertical",
		layout_config = {
			vertical = { width = 0.60 },
		},
		-- borderchars = {
		-- 	"─",
		-- 	"│",
		-- 	"─",
		-- 	"│",
		-- 	"┌",
		-- 	"┐",
		-- 	"┘",
		-- 	"└",
		-- },
		borderchars = {
			"━",
			"┃",
			"━",
			"┃",
			"┏",
			"┓",
			"┛",
			"┗",
		},
	},
})

require("telescope").load_extension("file_browser")
