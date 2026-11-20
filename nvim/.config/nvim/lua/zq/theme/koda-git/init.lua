-- koda-git: the koda theme with only the background swapped to #202020, the
-- "background" color of the opencode "ghostty-system" theme, so a dedicated
-- neovim instance (e.g. git status/diffs in a terminal split) blends with the
-- terminal UI around it.
--
-- Implemented by patching the shared koda palettes in place before the base
-- theme builds its highlights, so no color definitions are duplicated here.
--
-- Note: because the palettes are shared module tables, the overrides persist
-- for the rest of the session — switching back to `:colorscheme koda` at
-- runtime would keep the lighter background. Launch a fresh instance instead.
local M = {}

local BG = "#202020" -- opencode ghostty-system: theme.background

function M.setup()
	local colors = require("zq.theme.koda.palette")
	local plugin_palette = require("koda.palette.dark")

	-- Main background (Normal, NormalNC, MsgArea, SignColumn neighbours, ...)
	colors.base00 = BG
	colors.black = BG
	plugin_palette.bg = BG

	-- CursorLine / prompt surfaces sat one step above the old background
	-- (black2 #202020 over #101010); keep that contrast step over the new one.
	colors.black2 = "#303030"

	require("zq.theme.koda").setup()

	-- The base setup names itself "koda" (and runs `hi clear`); report under
	-- our own name once all highlights are applied.
	vim.g.colors_name = "koda-git"
end

return M
