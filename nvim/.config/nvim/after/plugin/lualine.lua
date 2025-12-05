local navic = require("nvim-navic")
local c = require("zq.theme.monochrome.palette")
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

local lualine_theme = {
	normal = {
		a = { bg = c.real_black, fg = c.brackets, gui = "bold" },
		b = { bg = c.real_black, fg = colors.b_fg },
		c = { bg = c.real_black, fg = c.base05 },
		y = { bg = c.real_black, fg = c.base05 },
		z = { bg = c.real_black, fg = c.status_line_session },
	},
	insert = {
		a = { bg = c.real_black, fg = c.brackets, gui = "bold" },
		b = { bg = c.real_black, fg = colors.b_fg },
		c = { bg = c.real_black, fg = c.base05 },
		y = { bg = c.real_black, fg = c.base05 },
		z = { bg = c.real_black, fg = c.status_line_session },
	},
	visual = {
		a = { bg = c.real_black, fg = c.brackets, gui = "bold" },
		b = { bg = c.real_black, fg = colors.b_fg },
		c = { bg = c.real_black, fg = c.base05 },
		y = { bg = c.real_black, fg = c.base05 },
		z = { bg = c.real_black, fg = c.status_line_session },
	},
	replace = {
		a = { bg = c.real_black, fg = c.brackets, gui = "bold" },
		b = { bg = c.real_black, fg = colors.b_fg },
		c = { bg = c.real_black, fg = c.base05 },
		y = { bg = c.real_black, fg = c.base05 },
		z = { bg = c.real_black, fg = c.status_line_session },
	},
	command = {
		a = { bg = c.real_black, fg = c.brackets, gui = "bold" },
		b = { bg = c.real_black, fg = colors.b_fg },
		c = { bg = c.real_black, fg = c.base05 },
		y = { bg = c.real_black, fg = c.base05 },
		z = { bg = c.real_black, fg = c.status_line_session },
	},
	inactive = {
		a = { bg = c.navic_bg, fg = c.winbar_inactive_fg },
		b = { bg = c.real_black, fg = colors.b_fg },
		c = { bg = c.real_black, fg = colors.white },
	},
}

local function navic_inactive()
	return navic.format_data(navic.get_data(), { highlight = false })
end

local function navic_active()
	return navic.format_data(navic.get_data())
end

local function filepath()
	local path = vim.fn.expand("%")
	path = path:gsub("/", "  ")
	return " " .. path
end

local function session()
	local session_name = string.upper(vim.fn.fnamemodify(vim.v.this_session, ":t"))
	local session_exists = session_name ~= nil and session_name ~= ""
	return session_exists and " " .. session_name or ""
end

local function fileMetaSep()
	return "-"
end

local function navic_active_filler()
	return " "
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
	winbar = {
		lualine_c = {
			{
				navic_active,
			},
			{
				navic_active_filler,
				color = { bg = c.navic_bg },
			},
		},
	},
	inactive_winbar = {
		lualine_a = {
			{
				filepath,
			},
			{
				navic_inactive,
			},
		},
	},
	sections = {
		lualine_a = {
			{
				"mode",
				fmt = function(s)
					return "[" .. s .. "]"
				end,
			},
		},
		lualine_b = {
			-- {
			-- 	"location",
			-- 	icons_enabled = false,
			-- 	fmt = function(s)
			-- 		return "[" .. s .. "]"
			-- 	end,
			-- },
			-- { fileMetaSep },
			-- {
			-- 	"encoding",
			-- 	fmt = function(s)
			-- 		local value_exists = s ~= nil and s ~= ""
			-- 		return "[" .. (value_exists and "󰈚 " .. string.upper(s) or "") .. "]"
			-- 	end,
			-- },
			{
				"filetype",
				colored = false,
				icon_only = true,
				padding = { left = 1, right = 0 },
				color = { fg = c.base05 },
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
				color = { fg = c.base05 },
			},
		},
		lualine_c = {
			-- {
			-- 	"navic",
			-- 	color = { fg = c.navic },
			-- },
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
					added = "LuaLineDiffAdd",
					modified = "LuaLineDiffChange",
					removed = "LuaLineDiffDelete",
				},
			},
			"diagnostics",
			{
				"lsp_status",
				icon = "",
				symbols = {
					spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" },
					done = "",
					separator = " ",
				},
				ignore_lsp = {},
			},
		},
		lualine_y = {
			{ "branch", icon = { "", color = { fg = "#7cfc00" } }, color = { fg = "#4c9a00" } },
		},
		lualine_z = {
			{
				session,
			},
		},
	},
})
