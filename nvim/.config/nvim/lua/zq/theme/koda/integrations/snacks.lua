local colors = require("zq.theme.koda.palette")

local highlights = {
	SnacksDashboardHeader = { fg = colors.dashboard_header },
	OpenCodeInputBorder = { fg = colors.grey_fg, bg = colors.base03 },
	OpenCodeInputNormal = { bg = colors.indent_line },
	OpenCodeInputTitle = { fg = colors.dashboard_header, bg = colors.base03 },
	OpenCodeInputFooter = { fg = colors.grey_fg, bg = colors.base03 },
	OpenCodeInputFooterKey = { fg = colors.base05, bg = colors.base03 },
	OpenCodeInputFooterDesc = { fg = colors.grey_fg2, bg = colors.base03 },
}

return highlights
