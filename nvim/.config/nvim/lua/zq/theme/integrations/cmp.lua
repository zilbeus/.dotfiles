local colors = require("zq.theme.monochrome.palette")
local base16 = require("zq.theme.monochrome.palette")

local highlights = {
	CmpItemAbbr = { fg = colors.white },
	CmpItemAbbrMatch = { fg = colors.blue, bold = true },
	CmpDoc = { bg = colors.darker_black },
	CmpDocumentationBorder = { fg = colors.darker_black, bg = colors.darker_black },
	CmpPmenu = { bg = colors.black },
	CmpSel = { link = "PmenuSel", bold = true },
}

local item_kinds = {
	-- cmp item kinds
	CmpItemKindConstant = { fg = base16.base09 },
	CmpItemKindFunction = { fg = base16.base0D },
	CmpItemKindIdentifier = { fg = base16.base08 },
	CmpItemKindField = { fg = base16.base08 },
	CmpItemKindVariable = { fg = base16.base0E },
	CmpItemKindSnippet = { fg = colors.red },
	CmpItemKindText = { fg = base16.base0B },
	CmpItemKindStructure = { fg = base16.base0E },
	CmpItemKindType = { fg = base16.base0A },
	CmpItemKindKeyword = { fg = base16.base07 },
	CmpItemKindMethod = { fg = base16.base0D },
	CmpItemKindConstructor = { fg = colors.blue },
	CmpItemKindFolder = { fg = base16.base07 },
	CmpItemKindModule = { fg = base16.base0A },
	CmpItemKindProperty = { fg = base16.base08 },
	CmpItemKindEnum = { fg = colors.blue },
	CmpItemKindUnit = { fg = base16.base0E },
	CmpItemKindClass = { fg = colors.teal },
	CmpItemKindFile = { fg = base16.base07 },
	CmpItemKindInterface = { fg = colors.green },
	CmpItemKindColor = { fg = colors.white },
	CmpItemKindReference = { fg = base16.base05 },
	CmpItemKindEnumMember = { fg = colors.purple },
	CmpItemKindStruct = { fg = base16.base0E },
	CmpItemKindValue = { fg = colors.cyan },
	CmpItemKindEvent = { fg = colors.yellow },
	CmpItemKindOperator = { fg = base16.base05 },
	CmpItemKindTypeParameter = { fg = base16.base08 },
	CmpItemKindCopilot = { fg = colors.green },
	CmpItemKindCodeium = { fg = colors.vibrant_green },
	CmpItemKindTabNine = { fg = colors.baby_pink },
}

-- custom highlights per style!
local styles = {

	default = {
		-- CmpBorder = { fg = colors.grey_fg },
		CmpBorder = { fg = colors.line },
		BlinkCmpMenuBorder = { fg = colors.line },
	},

	atom = {
		CmpItemMenu = { fg = colors.light_grey, italic = true },
		CmpPmenu = {
			bg = colors.black2,
		},

		CmpDoc = { bg = colors.darker_black },
		CmpDocumentationBorder = { fg = colors.darker_black, bg = colors.darker_black },
	},

	atom_colored = {
		CmpItemMenu = { fg = colors.light_grey, italic = true },
		CmpPmenu = {
			bg = colors.black2,
		},

		CmpDoc = { bg = colors.darker_black },
		CmpDocumentationBorder = { fg = colors.darker_black, bg = colors.darker_black },
	},

	flat_light = {
		CmpPmenu = {
			bg = colors.black2,
		},

		CmpBorder = { fg = colors.black2, bg = colors.black2 },
		BlinkCmpMenuBorder = { fg = colors.black2, bg = colors.black2 },
		CmpDocumentationBorder = { fg = colors.darker_black, bg = colors.darker_black },
	},

	flat_dark = {
		CmpPmenu = {
			bg = colors.darker_black,
		},

		CmpBorder = { fg = colors.darker_black, bg = colors.darker_black },
		BlinkCmpMenuBorder = { fg = colors.darker_black, bg = colors.darker_black },
		CmpDocumentationBorder = { fg = colors.black2, bg = colors.black2 },
		CmpDoc = { bg = colors.black2 },
	},
}

highlights = vim.tbl_deep_extend("force", highlights, styles["default"] or {})
highlights = vim.tbl_deep_extend("force", highlights, item_kinds)

return highlights
