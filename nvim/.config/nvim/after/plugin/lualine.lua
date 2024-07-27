local colors = {
	black = "#141414",
	white = "#adadad",
	red = "#3b0000",
	green = "#42be65",
	blue = "#33b1ff",
	yellow = "#ffe97b",
	cyan = "#3ddbd9",
	magenta = "#ff73b6",
	b_black = "#292929",
	accent = "#3e2b00",
	accent_fg = "#eda601",
	accent_r = "#666666",
	accent_r_fg = "#1f1f1f",
	gray_bg = "#666666",
	gray_fg = "#1f1f1f",
	blue_bg = "#4e4eff",
	blue_fg = "#00009d",
	green_fg = "#002700",
	red_bg = "#ff4d4d",
	filename_fg = "#adadad",
}

local lualine_theme = {
	normal = {
		a = { bg = colors.gray_bg, fg = colors.gray_fg, gui = "bold" },
		b = { bg = colors.b_black, fg = colors.filename_fg },
		c = { bg = colors.black, fg = colors.white },
		y = { bg = colors.b_black, fg = colors.white },
		z = { bg = colors.accent_r, fg = colors.accent_r_fg },
	},
	insert = {
		a = { bg = colors.accent, fg = colors.accent_fg, gui = "bold" },
		b = { bg = colors.b_black, fg = colors.filename_fg },
		c = { bg = colors.black, fg = colors.white },
		y = { bg = colors.b_black, fg = colors.white },
		z = { bg = colors.accent_r, fg = colors.accent_r_fg },
	},
	visual = {
		a = { bg = colors.green, fg = colors.green_fg, gui = "bold" },
		b = { bg = colors.b_black, fg = colors.filename_fg },
		c = { bg = colors.black, fg = colors.white },
		y = { bg = colors.b_black, fg = colors.white },
		z = { bg = colors.accent_r, fg = colors.accent_r_fg },
	},
	replace = {
		a = { bg = colors.blue, fg = colors.blue_fg, gui = "bold" },
		b = { bg = colors.b_black, fg = colors.filename_fg },
		c = { bg = colors.black, fg = colors.white },
		y = { bg = colors.b_black, fg = colors.white },
		z = { bg = colors.accent_r, fg = colors.accent_r_fg },
	},
	command = {
		a = { bg = colors.red_bg, fg = colors.red, gui = "bold" },
		b = { bg = colors.b_black, fg = colors.filename_fg },
		c = { bg = colors.black, fg = colors.white },
		y = { bg = colors.b_black, fg = colors.white },
		z = { bg = colors.accent_r, fg = colors.accent_r_fg },
	},
	inactive = {
		a = { bg = colors.black, fg = colors.white, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { bg = colors.black, fg = colors.white },
	},
}

require("lualine").setup({
	options = {
		-- theme = lualine_theme,
		icons_enabled = true,
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		always_divide_middle = true,
		globalstatus = true,
	},
	sections = {
		lualine_a = {
			"mode",
		},
		lualine_b = {
			{
				"filename",
				file_status = true,
				path = 1,
				symbols = {
					modified = "[+]",
					readonly = "[RO]",
					unnamed = "[NO NAME]",
					newfile = "[NEW]",
				},
			},
		},
		lualine_c = {
			{ "branch", icon = { "", color = { fg = "#7cfc00" } }, color = { fg = "#4c9a00" } },
			{
				"diff",
				colored = true,
				symbols = {
					added = " ",
					modified = " ",
					removed = " ",
				},
			},
			"diagnostics",
		},
		lualine_x = { "encoding" },
		lualine_y = {
			{
				"filetype",
			},
		},
		lualine_z = {
			{
				"location",
				icons_enabled = true,
				icon = "",
			},
		},
	},
})
