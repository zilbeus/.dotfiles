local M = {}
local theme = require("zq.theme.monochrome.theme")

M.setup = function()
	vim.cmd("hi clear")

	vim.o.background = "dark"
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "monochrome"

	theme.set_highlights()
	require("zq.theme.integrations.cmp")
end

return M
