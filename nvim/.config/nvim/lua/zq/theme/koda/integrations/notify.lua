local colors = require("zq.theme.koda.palette")

return {
	NotifyBackground = { bg = colors.notif_bg },
	NotifyINFOTitle = { fg = colors.white, bg = colors.notif_bg },
	NotifyINFOIcon = { fg = colors.notify_icon, bg = colors.notif_bg },
	NotifyINFOBorder = { fg = colors.line, bg = colors.notif_bg },
	NotifyINFOBody = { bg = colors.notif_bg },

	NotifyERRORTitle = { fg = colors.white, bg = colors.notif_bg },
	NotifyERRORBorder = { fg = colors.line, bg = colors.notif_bg },
	NotifyERRORIcon = { fg = colors.error, bg = colors.notif_bg },
	NotifyERRORBody = { bg = colors.notif_bg },
}
