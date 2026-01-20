local navic = require("nvim-navic")
local c = require("zq.theme.koda.palette")

local lualine_theme = {
	normal = {
		a = { bg = c.lualine_a_bg, fg = c.lualine_a_fg },
		b = { bg = c.lualine_b_bg, fg = c.lualine_b_fg },
		c = { bg = c.lualine_c_bg, fg = c.lualine_c_fg },
		x = { bg = c.lualine_c_bg, fg = c.lualine_c_fg },
		y = { bg = c.lualine_y_bg, fg = c.lualine_y_fg },
		z = { bg = c.lualine_z_bg, fg = c.lualine_z_fg },
	},
	insert = {
		a = { bg = c.lualine_a_bg, fg = c.lualine_a_fg },
		b = { bg = c.lualine_b_bg, fg = c.lualine_b_fg },
		c = { bg = c.lualine_c_bg, fg = c.lualine_c_fg },
		x = { bg = c.lualine_x_bg, fg = c.lualine_x_fg },
		y = { bg = c.lualine_y_bg, fg = c.lualine_y_fg },
		z = { bg = c.lualine_z_bg, fg = c.lualine_z_fg },
	},
	visual = {
		a = { bg = c.lualine_a_bg, fg = c.lualine_a_fg },
		b = { bg = c.lualine_b_bg, fg = c.lualine_b_fg },
		c = { bg = c.lualine_c_bg, fg = c.lualine_c_fg },
		x = { bg = c.lualine_x_bg, fg = c.lualine_x_fg },
		y = { bg = c.lualine_y_bg, fg = c.lualine_y_fg },
		z = { bg = c.lualine_z_bg, fg = c.lualine_z_fg },
	},
	replace = {
		a = { bg = c.lualine_a_bg, fg = c.lualine_a_fg },
		b = { bg = c.lualine_b_bg, fg = c.lualine_b_fg },
		c = { bg = c.lualine_c_bg, fg = c.lualine_c_fg },
		x = { bg = c.lualine_x_bg, fg = c.lualine_x_fg },
		y = { bg = c.lualine_y_bg, fg = c.lualine_y_fg },
		z = { bg = c.lualine_z_bg, fg = c.lualine_z_fg },
	},
	command = {
		a = { bg = c.lualine_a_bg, fg = c.lualine_a_fg },
		b = { bg = c.lualine_b_bg, fg = c.lualine_b_fg },
		c = { bg = c.lualine_c_bg, fg = c.lualine_c_fg },
		x = { bg = c.lualine_x_bg, fg = c.lualine_x_fg },
		y = { bg = c.lualine_y_bg, fg = c.lualine_y_fg },
		z = { bg = c.lualine_z_bg, fg = c.lualine_z_fg },
	},
	inactive = {
		a = { bg = c.navic_bg, fg = c.winbar_inactive_fg },
		c = { bg = c.lualine_c_bg, fg = c.lualine_c_fg },
		x = { bg = c.lualine_x_bg, fg = c.lualine_x_fg },
	},
}

local function macro()
	local recording_register = vim.fn.reg_recording()
	if recording_register == "" then
		return ""
	else
		return "[REC @" .. recording_register .. "]"
	end
end

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

local function filepath_sep()
	return ""
end

local function filepath_part1()
	local dir1 = vim.fn.expand("%:p:h:h:t")
	return " " .. dir1
end

local function filepath_part2()
	local dir2 = vim.fn.expand("%:p:h:t")
	return " " .. dir2
end

local function session()
	local session_name = string.upper(vim.fn.fnamemodify(vim.v.this_session, ":t"))
	local session_exists = session_name ~= nil and session_name ~= ""
	return session_exists and " " .. session_name or ""
end

local function navic_active_filler()
	return " "
end

require("lualine").setup({
	options = {
		theme = lualine_theme,
		icons_enabled = true,
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		always_divide_middle = true,
		globalstatus = true,
		disabled_filetypes = {
			winbar = { "term", "toggleterm", "snacks_dashboard" },
		},
	},
	-- winbar = {
	-- 	lualine_c = {
	-- 		{
	-- 			navic_active,
	-- 		},
	-- 		{
	-- 			navic_active_filler,
	-- 			color = { bg = c.navic_bg },
	-- 		},
	-- 	},
	-- 	lualine_x = {
	-- 		{ "filetype" },
	-- 	},
	-- },
	-- inactive_winbar = {
	-- 	lualine_c = {
	-- 		{
	-- 			filepath,
	-- 		},
	-- 		{
	-- 			navic_inactive,
	-- 		},
	-- 	},
	-- 	lualine_x = {
	-- 		{ "filetype" },
	-- 	},
	-- },
	sections = {
		lualine_a = {
			{
				"mode",
				fmt = function(s)
					return " " .. s
				end,
			},
		},
		lualine_b = {
			{ filepath_part1, color = { fg = c.lualine_b_fg } },
			{ filepath_sep, color = { fg = c.grey_fg }, padding = { left = 0, right = 0 } },
			{ filepath_part2, color = { fg = c.lualine_b_fg } },
			{ filepath_sep, color = { fg = c.grey_fg }, padding = { left = 0, right = 0 } },
			{
				"filetype",
				colored = false,
				icon_only = true,
				padding = { left = 1, right = 0 },
				color = { fg = c.lualine_b_fg },
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
				padding = { left = 0, right = 1 },
				color = { fg = c.lualine_b_fg },
			},
		},
		lualine_c = {
			{ "branch", icon = { "" } },
			{ macro },
		},
		lualine_y = {
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
			{ "diagnostics", colored = false },
			{
				"lsp_status",
				icon = "󱁻",
				symbols = {
					spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" },
					done = "",
					separator = " ",
				},
				ignore_lsp = {},
			},
		},
		lualine_x = {
			{
				"location",
				icons_enabled = true,
			},
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
				session,
			},
		},
	},
})
