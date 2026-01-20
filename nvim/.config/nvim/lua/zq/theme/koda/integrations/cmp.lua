local colors = require("zq.theme.koda.palette")

local highlights = {
	CmpItemAbbr = { fg = colors.base05 },
	CmpItemAbbrMatch = { fg = colors.blue, bold = true },
	CmpDoc = { bg = colors.darker_black },
	CmpDocumentationBorder = { fg = colors.darker_black, bg = colors.darker_black },
	CmpPmenu = { bg = colors.black },
	CmpSel = { link = "PmenuSel", bold = true },
}

local item_kinds = {
	-- cmp item kinds
	CmpItemKindConstant = { fg = colors.cmp_kind_fg },
	CmpItemKindFunction = { fg = colors.cmp_kind_fg },
	CmpItemKindIdentifier = { fg = colors.cmp_kind_fg },
	CmpItemKindField = { fg = colors.cmp_kind_fg },
	CmpItemKindVariable = { fg = colors.cmp_kind_fg },
	CmpItemKindSnippet = { fg = colors.cmp_kind_fg },
	CmpItemKindText = { fg = colors.cmp_kind_fg },
	CmpItemKindStructure = { fg = colors.cmp_kind_fg },
	CmpItemKindType = { fg = colors.cmp_kind_fg },
	CmpItemKindKeyword = { fg = colors.cmp_kind_fg },
	CmpItemKindMethod = { fg = colors.cmp_kind_fg },
	CmpItemKindConstructor = { fg = colors.cmp_kind_fg },
	CmpItemKindFolder = { fg = colors.cmp_kind_fg },
	CmpItemKindModule = { fg = colors.cmp_kind_fg },
	CmpItemKindProperty = { fg = colors.cmp_kind_fg },
	CmpItemKindEnum = { fg = colors.cmp_kind_fg },
	CmpItemKindUnit = { fg = colors.cmp_kind_fg },
	CmpItemKindClass = { fg = colors.cmp_kind_fg },
	CmpItemKindFile = { fg = colors.cmp_kind_fg },
	CmpItemKindInterface = { fg = colors.cmp_kind_fg },
	CmpItemKindColor = { fg = colors.cmp_kind_fg },
	CmpItemKindReference = { fg = colors.cmp_kind_fg },
	CmpItemKindEnumMember = { fg = colors.cmp_kind_fg },
	CmpItemKindStruct = { fg = colors.cmp_kind_fg },
	CmpItemKindValue = { fg = colors.cmp_kind_fg },
	CmpItemKindEvent = { fg = colors.cmp_kind_fg },
	CmpItemKindOperator = { fg = colors.cmp_kind_fg },
	CmpItemKindTypeParameter = { fg = colors.cmp_kind_fg },
	CmpItemKindCopilot = { fg = colors.cmp_kind_fg },
	CmpItemKindCodeium = { fg = colors.cmp_kind_fg },
	CmpItemKindTabNine = { fg = colors.cmp_kind_fg },
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
