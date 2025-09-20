local colors = require("zq.theme.monochrome.palette")
local colorize = require("zq.theme.colors").change_hex_lightness

return {
	-- LSP References
	LspReferenceText = { fg = colors.darker_black, bg = colors.white },
	LspReferenceRead = { fg = colors.darker_black, bg = colors.white },
	LspReferenceWrite = { fg = colors.darker_black, bg = colors.white },

	-- Lsp Diagnostics
	DiagnosticHint = { fg = colors.hint },
	DiagnosticError = { fg = colors.error },
	DiagnosticWarn = { fg = colors.warning },
	DiagnosticInfo = { fg = colors.green },
	LspSignatureActiveParameter = { fg = colors.black, bg = colors.base05 },

	RenamerTitle = { fg = colors.black, bg = colors.red },
	RenamerBorder = { fg = colors.red },

	LspInlayHint = {
		bg = colorize(colors.black2, vim.o.bg == "dark" and 0 or 3),
		fg = colors.light_grey,
	},
}
