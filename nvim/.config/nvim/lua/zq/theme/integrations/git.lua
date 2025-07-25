local colors = require("zq.theme.monochrome.palette")
local theme = require("zq.theme.monochrome.palette")

return {

	diffOldFile = {
		fg = colors.baby_pink,
	},

	diffNewFile = {
		fg = colors.blue,
	},

	DiffAdd = {
		fg = colors.blue,
	},

	DiffAdded = {
		fg = colors.green,
	},

	DiffChange = {
		fg = colors.light_grey,
	},

	DiffChangeDelete = {
		fg = colors.red,
	},

	DiffModified = {
		fg = colors.orange,
	},

	DiffDelete = {
		fg = colors.red,
	},

	DiffRemoved = {
		fg = colors.red,
	},

	DiffText = {
		fg = colors.white,
		bg = colors.black2,
	},

	-- git commits
	gitcommitOverflow = {
		fg = theme.base08,
	},

	gitcommitSummary = {
		fg = theme.base0B,
	},

	gitcommitComment = {
		fg = theme.base03,
	},

	gitcommitUntracked = {
		fg = theme.base03,
	},

	gitcommitDiscarded = {
		fg = theme.base03,
	},

	gitcommitSelected = {
		fg = theme.base03,
	},

	gitcommitHeader = {
		fg = theme.base0E,
	},

	gitcommitSelectedType = {
		fg = theme.base0D,
	},

	gitcommitUnmergedType = {
		fg = theme.base0D,
	},

	gitcommitDiscardedType = {
		fg = theme.base0D,
	},

	gitcommitBranch = {
		fg = theme.base09,
		bold = true,
	},

	gitcommitUntrackedFile = {
		fg = theme.base0A,
	},

	gitcommitUnmergedFile = {
		fg = theme.base08,
		bold = true,
	},

	gitcommitDiscardedFile = {
		fg = theme.base08,
		bold = true,
	},

	gitcommitSelectedFile = {
		fg = theme.base0B,
		bold = true,
	},

	GitSignsAdd = {
		fg = "#1C582E",
		-- fg = colors.green,
		bg = colors.statuscolumn,
	},

	GitSignsChange = {
		fg = colors.git_change,
		bg = colors.statuscolumn,
	},

	LuaLineDiffAdd = {
		fg = colors.green,
		bg = colors.darker_black,
	},

	LuaLineDiffChange = {
		fg = colors.git_change,
		bg = colors.darker_black,
	},

	LuaLineDiffDelete = {
		fg = colors.red,
		bg = colors.darker_black,
	},
}
