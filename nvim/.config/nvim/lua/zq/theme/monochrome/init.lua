local M = {}
local theme = require("zq.theme.monochrome.theme")

local integrations = {
	"zq.theme.integrations.syntax",
	"zq.theme.integrations.treesitter",
	"zq.theme.integrations.codeactionmenu",
	"zq.theme.integrations.devicons",
	"zq.theme.integrations.git",
	"zq.theme.integrations.lsp",
	"zq.theme.integrations.neogit",
	"zq.theme.integrations.nvimtree",
	"zq.theme.integrations.telescope",
	"zq.theme.integrations.whichkey",
	"zq.theme.integrations.trouble",
	"zq.theme.integrations.diffview",
}

local apply_integration = function(integrationName)
	local integration = require(integrationName)
	for k, v in pairs(integration) do
		vim.api.nvim_set_hl(0, k, v)
	end
end

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

	for i, integrationname in pairs(integrations) do
		apply_integration(integrationname)
	end
end

return M
