require("mini.indentscope").setup({
	draw = {
		delay = 50,
		animation = function(s, n)
			return 5
		end,
	},
	symbol = "🭰",
	options = {
		try_as_border = true,
	},
})
