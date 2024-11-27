local colors = require("zq.theme.monochrome.palette")

return {
	DiagnosticSignError = { fg = colors.red },
	DiagnosticSignWarning = { fg = colors.yellow },
	DiagnosticSignInfo = { fg = colors.blue },
	DiagnosticSignHint = { fg = colors.dark_purple },
	DiagnosticSignCurrentLineError = { fg = colors.red, bg = colors.black2 },
	DiagnosticSignCurrentLineWarning = { fg = colors.yellow, bg = colors.black2 },
	DiagnosticSignCurrentLineInfo = { fg = colors.blue, bg = colors.black2 },
	DiagnosticSignCurrentLineHint = { fg = colors.dark_purple, bg = colors.black2 },
}
