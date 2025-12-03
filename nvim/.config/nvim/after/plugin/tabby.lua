local colors = require("zq.theme.monochrome.palette")

local theme = {
	active_tab = { fg = colors.base05, bg = colors.base01 },
	active_tab_left_sep = { fg = colors.teal, bg = colors.teal },
	active_tab_close_btn = { fg = colors.red, bg = colors.base01 },
	active_tab_nr = { fg = colors.teal, bg = colors.base01 },
	inactive_tab = { fg = colors.grey_fg2, bg = colors.base00 },
	inactive_tab_left_sep = { fg = colors.base07, bg = colors.base00 },
	inactive_tab_close_btn = { fg = colors.grey_fg2, bg = colors.base00 },
	inactive_tab_nr = { fg = colors.grey_fg2, bg = colors.base00 },
	fill = { fg = colors.base07, bg = colors.real_black },
	placeholder = { fg = "transparent", bg = "transparent" },
}

require("tabby.tabline").set(function(line)
	return {
		line.tabs().foreach(function(tab)
			local hl = tab.is_current() and theme.active_tab or theme.inactive_tab
			local left_sep
			local close_btn
			local tab_nr
			if tab.is_current() then
				left_sep = line.sep("▎", theme.active_tab_left_sep, theme.active_tab)
				close_btn = {
					tab.close_btn(" "),
					hl = theme.active_tab_close_btn,
				}
				tab_nr = {
					"[",
					{
						tab.number(),
						hl = theme.active_tab_nr,
					},
					"]",
				}
			else
				left_sep = line.sep("▎", theme.inactive_tab_left_sep, theme.inactive_tab)
				close_btn = {
					tab.close_btn(" "),
					hl = theme.inactive_tab_close_btn,
				}
				tab_nr = {
					"[",
					{
						tab.number(),
						hl = theme.inactive_tab_nr,
					},
					"]",
				}
			end

			return {
				-- left_sep,
				tab_nr,
				tab.name(),
				close_btn,
				hl = hl,
				margin = " ",
			}
		end),
		line.spacer(),
		hl = theme.fill,
	}
end)
