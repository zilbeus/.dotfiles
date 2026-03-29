local colors = require("zq.theme.koda.palette")

return {
	DapBreakpointText = { fg = colors.error, bg = colors.statuscolumn },
	DapBreakpointConditionText = { fg = colors.error, bg = colors.statuscolumn },
	DapLogPointText = { fg = colors.error, bg = colors.statuscolumn },
	DapStoppedText = { fg = colors.navic_icon, bg = colors.statuscolumn },
	DapBreakpointRejectedText = { fg = colors.error, bg = colors.statuscolumn },
	DapStoppedLine = { bg = colors.breakpoint_stopped_line_bg },
}
