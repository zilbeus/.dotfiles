local colors_theme = require("zq.theme.monochrome.palette")
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

local modes = {
	["NORMAL"] = "NRM",
	["O-PENDING"] = "N?",
	["INSERT"] = "INS",
	["VISUAL"] = "VIS",
	["V-BLOCK"] = "VBL",
	["V-LINE"] = "VLN",
	["V-REPLACE"] = "VRP",
	["REPLACE"] = "RPL",
	["COMMAND"] = "CMD",
	["SHELL"] = "SHL",
	["TERMINAL"] = "TRM",
	["EX"] = "EX",
	["S-BLOCK"] = "SBL",
	["S-LINE"] = "SLN",
	["SELECT"] = "SEL",
	["CONFIRM"] = "CNF",
	["MORE"] = "MRE",
}

local lualine_theme = {
	normal = {
		a = { bg = colors_theme.pmenu_bg, fg = colors_theme.black, gui = "bold" },
		b = { bg = colors.b_black, fg = colors.filename_fg },
		c = { bg = colors.black, fg = colors.white },
		y = { bg = colors.b_black, fg = colors.white },
		z = { bg = colors.accent_r, fg = colors.accent_r_fg },
	},
	insert = {
		a = { bg = colors_theme.pmenu_bg, fg = colors_theme.black, gui = "bold" },
		b = { bg = colors.b_black, fg = colors.filename_fg },
		c = { bg = colors.black, fg = colors.white },
		y = { bg = colors.b_black, fg = colors.white },
		z = { bg = colors.accent_r, fg = colors.accent_r_fg },
	},
	visual = {
		a = { bg = colors_theme.pmenu_bg, fg = colors_theme.black, gui = "bold" },
		b = { bg = colors.b_black, fg = colors.filename_fg },
		c = { bg = colors.black, fg = colors.white },
		y = { bg = colors.b_black, fg = colors.white },
		z = { bg = colors.accent_r, fg = colors.accent_r_fg },
	},
	replace = {
		a = { bg = colors_theme.pmenu_bg, fg = colors_theme.black, gui = "bold" },
		b = { bg = colors.b_black, fg = colors.filename_fg },
		c = { bg = colors.black, fg = colors.white },
		y = { bg = colors.b_black, fg = colors.white },
		z = { bg = colors.accent_r, fg = colors.accent_r_fg },
	},
	command = {
		a = { bg = colors_theme.pmenu_bg, fg = colors_theme.black, gui = "bold" },
		b = { bg = colors.b_black, fg = colors.filename_fg },
		c = { bg = colors.black, fg = colors.white },
		y = { bg = colors.b_black, fg = colors.white },
		z = { bg = colors.accent_r, fg = colors.accent_r_fg },
	},
	inactive = {
		a = { bg = colors_theme.pmenu_bg, fg = colors_theme.black, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { bg = colors.black, fg = colors.white },
	},
}

local function session()
	return string.upper(vim.fn.fnamemodify(vim.v.this_session, ":t"))
end

local function project()
	return string.upper(vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t"))
end

require("lualine").setup({
	options = {
		theme = lualine_theme,
		icons_enabled = true,
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		always_divide_middle = true,
		globalstatus = true,
	},
	sections = {
		lualine_a = {
			{
				"mode",
				fmt = function(s)
					return modes[s] or s
				end,
			},
		},
		lualine_b = {
			{
				session,
			},
			-- {
			-- 	project,
			-- },
			{
				"filename",
				file_status = true,
				path = 1,
				fmt = function(s)
					return vim.fn.fnamemodify(s, ":t")
				end,
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
