local colors = require("zq.theme.koda.palette")

return {
	DiagnosticSignError = { fg = colors.red, bg = colors.statuscolumn },
	DiagnosticSignWarning = { fg = colors.yellow, bg = colors.statuscolumn },
	DiagnosticSignInfo = { fg = colors.blue, bg = colors.statuscolumn },
	DiagnosticSignHint = { fg = colors.dark_purple, bg = colors.statuscolumn },
	DiagnosticSignCurrentLineError = { fg = colors.red, bg = colors.statuscolumn },
	DiagnosticSignCurrentLineWarning = { fg = colors.yellow, bg = colors.statuscolumn },
	DiagnosticSignCurrentLineInfo = { fg = colors.blue, bg = colors.statuscolumn },
	DiagnosticSignCurrentLineHint = { fg = colors.dark_purple, bg = colors.statuscolumn },
}
