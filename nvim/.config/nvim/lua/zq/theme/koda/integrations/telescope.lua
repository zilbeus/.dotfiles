local colors = require("zq.theme.koda.palette")

local hlgroups = {

	TelescopePromptPrefix = {
		fg = colors.red,
		bg = colors.black2,
	},

	TelescopeNormal = { bg = colors.darker_black },

	TelescopePreviewTitle = {
		fg = "#bfc5d0",
		bg = "#292929",
	},

	TelescopePromptTitle = {
		fg = "#bfc5d0",
		bg = "#292929",
	},

	TelescopeResultsTitle = {
		fg = "#bfc5d0",
		bg = "#292929",
	},

	TelescopeSelection = { bg = colors.pmenu_bg, fg = colors.base01 },
	TelescopeResultsDiffAdd = { fg = colors.green },
	TelescopeResultsDiffChange = { fg = colors.yellow },
	TelescopeResultsDiffDelete = { fg = colors.red },

	TelescopeMatching = { bg = colors.pmenu_bg, fg = colors.base01 },
}

local styles = {
	borderless = {
		TelescopeBorder = { fg = colors.darker_black, bg = colors.darker_black },
		TelescopePromptBorder = { fg = colors.black2, bg = colors.black2 },
		TelescopePromptNormal = { fg = colors.white, bg = colors.black2 },
		TelescopeResultsTitle = { fg = colors.darker_black, bg = colors.darker_black },
		TelescopePromptPrefix = { fg = colors.red, bg = colors.black2 },
	},

	bordered = {
		TelescopeBorder = { fg = colors.one_bg3 },
		TelescopePromptBorder = { fg = colors.one_bg3 },
		TelescopeResultsTitle = hlgroups.TelescopeResultsTitle,
		TelescopePreviewTitle = hlgroups.TelescopePreviewTitle,
		TelescopePromptPrefix = { fg = colors.red, bg = colors.black },
		TelescopeNormal = { bg = colors.black },
		TelescopePromptNormal = { bg = colors.black },
	},
}

local result = vim.tbl_deep_extend("force", hlgroups, styles["bordered"])

return result
