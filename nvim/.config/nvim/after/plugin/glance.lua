require("glance").setup({
	zindex = 100,
	detached = false,
	border = {
		enable = true,
		top_char = "━",
		bottom_char = "━",
	},
	list = {
		position = "right",
		width = 0.33,
	},
	theme = {
		enable = true,
		mode = "auto",
	},
	indent_lines = {
		enable = true,
		icon = "│",
	},
	use_trouble_qf = true,
})
