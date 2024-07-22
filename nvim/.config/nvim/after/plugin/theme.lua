local options = {
	styles = {
		keywords = "bold",
		comments = "bold",
	},
}

local palettes = {
	github_dark = {
		bg1 = "#000000",
		bg0 = "#000000",
		red = "#ff564b",
	},
}

local specs = {
	github_dark = {
		bg1 = "#000000",
		bg0 = "#000000",
		syntax = {
			keyword = "#fec43f",
			conditional = "#fec43f",
			operator = "#fec43f",
			builtin0 = "#c9d1d9",
			field = "#c9d1d9",
		},
	},
}

local groups = {
	github_dark = {
		String = { fg = "#58d241" },
		Function = { fg = "#c9d1d9" },
		Operator = { fg = "#c9d1d9" },
	},
}

require("github-theme").setup({
	palettes = palettes,
	options = options,
	specs = specs,
	groups = groups,
})

vim.cmd("colorscheme monochrome")
