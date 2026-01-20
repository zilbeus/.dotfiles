local colors = require("zq.theme.koda.palette")

return {
	DiagnosticSignError = { fg = colors.error, bg = colors.statuscolumn },
	DiagnosticSignWarning = { fg = colors.warning, bg = colors.statuscolumn },
	DiagnosticSignInfo = { fg = colors.info, bg = colors.statuscolumn },
	DiagnosticSignHint = { fg = colors.hint, bg = colors.statuscolumn },
	DiagnosticSignCurrentLineError = { fg = colors.error, bg = colors.statuscolumn },
	DiagnosticSignCurrentLineWarning = { fg = colors.warning, bg = colors.statuscolumn },
	DiagnosticSignCurrentLineInfo = { fg = colors.info, bg = colors.statuscolumn },
	DiagnosticSignCurrentLineHint = { fg = colors.hint, bg = colors.statuscolumn },
}
