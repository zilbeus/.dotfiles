require("telescope").setup({
	defaults = {
		layout_strategy = "vertical",
		layout_config = {
			vertical = { width = 0.60, mirror = true, prompt_position = "top", height = 0.5 },
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
require("telescope").load_extension("ui-select")
