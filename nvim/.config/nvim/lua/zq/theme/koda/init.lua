local M = {}
local theme = require("zq.theme.koda.theme")
local colors = require("zq.theme.koda.palette")

local integrations = {
	"zq.theme.koda.integrations.syntax",
	-- "zq.theme.koda.integrations.treesitter",
	"zq.theme.koda.integrations.codeactionmenu",
	"zq.theme.koda.integrations.devicons",
	"zq.theme.koda.integrations.git",
	"zq.theme.koda.integrations.lsp",
	"zq.theme.koda.integrations.neogit",
	"zq.theme.koda.integrations.telescope",
	"zq.theme.koda.integrations.whichkey",
	"zq.theme.koda.integrations.trouble",
	"zq.theme.koda.integrations.diffview",
	"zq.theme.koda.integrations.diagnostics",
	"zq.theme.koda.integrations.indentblankline",
	"zq.theme.koda.integrations.miniindentscope",
	"zq.theme.koda.integrations.bqf",
	"zq.theme.koda.integrations.minifiles",
	"zq.theme.koda.integrations.illuminate",
	"zq.theme.koda.integrations.fzf-lua",
	"zq.theme.koda.integrations.rendermarkdown",
	"zq.theme.koda.integrations.neotree",
	"zq.theme.koda.integrations.notify",
	"zq.theme.koda.integrations.snacks",
	"zq.theme.koda.integrations.lazygit",
	"zq.theme.koda.integrations.navic",
	"zq.theme.koda.integrations.noice",
}

local apply_integration = function(integrationName)
	local integration = require(integrationName)
	for k, v in pairs(integration) do
		vim.api.nvim_set_hl(0, k, v)
	end
end

local apply_defaults = function()
	local config = require("koda.config")
	local groups = require("koda.groups") -- Points to lua/koda/groups/init.lua
	local palette = require("koda.palette.dark")
	palette.emphasis = colors.base06
	palette.func = colors.base06
	palette.string = colors.dashboard_header
	palette.const = colors.dashboard_header

	-- Takes the user's 'colors' table from setup() and forces it into the palette
	if config.options.colors and type(config.options.colors) == "table" then
		palette = vim.tbl_deep_extend("force", palette, config.options.colors)
	end

	-- Clear existing highlights
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd("syntax reset")
	end
	vim.g.colors_name = "koda"

	-- Apply highlights
	local hl_groups = groups.setup(palette, config.options)
	hl_groups = groups.setup(palette, config.options)

	for group, hl in pairs(hl_groups) do
		vim.api.nvim_set_hl(0, group, hl)
	end
end

M.setup = function()
	apply_defaults()

	vim.o.background = "dark"

	vim.o.termguicolors = true

	theme.set_highlights()
	require("zq.theme.koda.integrations.cmp")

	for i, integrationname in pairs(integrations) do
		apply_integration(integrationname)
	end
end

return M
