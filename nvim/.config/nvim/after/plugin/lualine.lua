local navic = require("nvim-navic")
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
	b_bg = "#232830",
	b_fg = "#7a879d",
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
		b = { bg = colors.b_bg, fg = colors.b_fg },
		c = { bg = colors_theme.darker_black, fg = colors_theme.base05 },
		y = { bg = colors.b_bg, fg = colors.b_fg },
		z = { bg = colors.b_bg, fg = colors.b_fg },
	},
	insert = {
		a = { bg = colors_theme.pmenu_bg, fg = colors_theme.black, gui = "bold" },
		b = { bg = colors.b_bg, fg = colors.b_fg },
		c = { bg = colors_theme.darker_black, fg = colors_theme.base05 },
		y = { bg = colors.b_bg, fg = colors.b_fg },
		z = { bg = colors.b_bg, fg = colors.b_fg },
	},
	visual = {
		a = { bg = colors_theme.pmenu_bg, fg = colors_theme.black, gui = "bold" },
		b = { bg = colors.b_bg, fg = colors.b_fg },
		c = { bg = colors_theme.darker_black, fg = colors_theme.base05 },
		y = { bg = colors.b_bg, fg = colors.b_fg },
		z = { bg = colors.b_bg, fg = colors.b_fg },
	},
	replace = {
		a = { bg = colors_theme.pmenu_bg, fg = colors_theme.black, gui = "bold" },
		b = { bg = colors.b_bg, fg = colors.b_fg },
		c = { bg = colors_theme.darker_black, fg = colors_theme.base05 },
		y = { bg = colors.b_bg, fg = colors.b_fg },
		z = { bg = colors.b_bg, fg = colors.b_fg },
	},
	command = {
		a = { bg = colors_theme.pmenu_bg, fg = colors_theme.black, gui = "bold" },
		b = { bg = colors.b_bg, fg = colors.b_fg },
		c = { bg = colors_theme.darker_black, fg = colors_theme.base05 },
		y = { bg = colors.b_bg, fg = colors.b_fg },
		z = { bg = colors.b_bg, fg = colors.b_fg },
	},
	inactive = {
		a = { bg = colors_theme.pmenu_bg, fg = colors_theme.black, gui = "bold" },
		b = { bg = colors.b_bg, fg = colors.b_fg },
		c = { bg = colors.black, fg = colors.white },
	},
}

local function session()
	local session_name = string.upper(vim.fn.fnamemodify(vim.v.this_session, ":t"))
	local session_exists = session_name ~= nil and session_name ~= ""
	return session_exists and " " .. session_name or ""
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
			{ "branch", icon = { "", color = { fg = "#7cfc00" } }, color = { fg = "#4c9a00" } },
			-- {
			-- 	project,
			-- },
		},
		lualine_c = {
			{
				"filetype",
				colored = false,
				icon_only = true,
				padding = { left = 1, right = 0 },
			},
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
				padding = { left = 0 },
			},
			{
				"navic",
				color = { fg = colors_theme.light_grey },
			},
		},
		lualine_x = {
			{
				"diff",
				colored = true,
				symbols = {
					added = " ",
					modified = " ",
					removed = " ",
				},
				diff_color = {
					added = 'LuaLineDiffAdd',
					modified = 'LuaLineDiffChange',
					removed = 'LuaLineDiffDelete',
				}
			},
			"diagnostics",
		},
		lualine_y = {
			{
				"encoding",
				fmt = function(s)
					local value_exists = s ~= nil and s ~= ""
					return value_exists and "󰈚 " .. string.upper(s) or ""
				end,
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
