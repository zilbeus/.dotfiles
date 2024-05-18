vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	underline = false,
	float = {
		header = false,
		border = "rounded",
		focusable = true,
	},
})
local icons = {
	[vim.diagnostic.severity.ERROR] = "☒",
	[vim.diagnostic.severity.WARN] = "⚠",
	[vim.diagnostic.severity.INFO] = "▣",
	[vim.diagnostic.severity.HINT] = "◉",
}
do
	vim.fn.sign_define(
		"DiagnosticSignError",
		{ text = icons[vim.diagnostic.severity.ERROR], texthl = "DiagnosticSignError" }
	)
	vim.fn.sign_define(
		"DiagnosticSignWarn",
		{ text = icons[vim.diagnostic.severity.WARN], texthl = "DiagnosticSignWarn" }
	)
	vim.fn.sign_define(
		"DiagnosticSignInfo",
		{ text = icons[vim.diagnostic.severity.INFO], texthl = "DiagnosticSignInfo" }
	)
	vim.fn.sign_define(
		"DiagnosticSignHint",
		{ text = icons[vim.diagnostic.severity.HINT], texthl = "DiagnosticSignHint" }
	)
end
