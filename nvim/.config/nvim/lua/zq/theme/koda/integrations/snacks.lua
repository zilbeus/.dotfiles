local colors = require("zq.theme.koda.palette")

local highlights = {
	SnacksDashboardHeader = { fg = colors.dashboard_header },
	OpenCodeInputBorder = { fg = colors.opencode_input_border_fg, bg = colors.opencode_input_border_bg },
	OpenCodeInputNormal = { bg = colors.opencode_input_bg },
	OpenCodeInputTitle = { fg = colors.info, bg = colors.opencode_input_border_bg },
	OpenCodeInputFooter = { fg = colors.grey_fg, bg = colors.opencode_input_border_bg },
	OpenCodeInputFooterKey = { fg = colors.base05, bg = colors.opencode_input_border_bg },
	OpenCodeInputFooterDesc = { fg = colors.grey_fg2, bg = colors.opencode_input_border_bg },
}

return highlights
