local colors = require("zq.theme.monochrome.palette")

local theme = {
	active_tab = { fg = colors.base02, bg = colors.pmenu_bg },
	active_tab_left_sep = { fg = colors.base02, bg = colors.pmenu_bg },
	active_tab_right_sep = { fg = colors.base02, bg = colors.pmenu_bg },
	inactive_tab = { fg = colors.base07, bg = colors.lightbg },
	inactive_tab_left_sep = { fg = colors.base07, bg = colors.lightbg },
	inactive_tab_right_sep = { fg = colors.base07, bg = colors.lightbg },
	fill = { fg = colors.base07, bg = colors.base01 },
	active_win = { fg = colors.base02, bg = colors.pmenu_bg },
	active_win_left_sep = { fg = colors.base01, bg = colors.pmenu_bg },
	active_win_right_sep = { bg = colors.pmenu_bg },
	inactive_win = { fg = colors.base07, bg = colors.lightbg },
	inactive_win_left_sep = { fg = colors.base01, bg = colors.lightbg },
	inactive_win_right_sep = { bg = colors.lightbg },
	placeholder = { fg = "transparent", bg = "transparent" },
}

require("tabby.tabline").set(function(line)
	local cwd = " " .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t") .. " "
	return {
		{
			{ cwd, hl = { fg = colors.base02, bg = colors.pmenu_bg } },
			{ "", hl = { fg = colors.base01, bg = colors.pmenu_bg } },
		},
		line.tabs().foreach(function(tab)
			local hl = tab.is_current() and theme.active_tab or theme.inactive_tab
			local left_sep_hl = tab.is_current() and theme.active_tab_left_sep or theme.inactive_tab_left_sep
			local right_sep_hl = tab.is_current() and theme.active_tab_right_sep or theme.inactive_tab_right_sep
			local icon = tab.is_current() and " 󱗜 " or " 󱗝 "

			return {
				line.sep("", left_sep_hl, theme.fill),
				icon .. tab.number() .. " ",
				line.sep("", theme.fill, right_sep_hl),
				hl = hl,
			}
		end),
		line.spacer(),
		line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
			local hl = win.is_current() and theme.active_win or theme.inactive_win
			local left_sep_hl = win.is_current() and theme.active_win_left_sep or theme.inactive_win_left_sep
			local right_sep_hl = win.is_current() and theme.active_win_right_sep or theme.inactive_win_right_sep
			local icon = win.is_current() and "  " or "  "

			return {
				line.sep("", theme.fill, left_sep_hl),
				icon .. win.buf_name() .. " ",
				line.sep("", right_sep_hl, theme.fill),
				hl = hl,
			}
		end),
		{
			{ "", hl = { fg = colors.base01, bg = colors.lightbg } },
			{ "   ", hl = { fg = colors.base07, bg = colors.lightbg } },
		},
		hl = theme.fill,
	}
end)
