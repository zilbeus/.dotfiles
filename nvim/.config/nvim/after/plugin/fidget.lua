local dots = {
	"⠋ ",
	"⠙ ",
	"⠹ ",
	"⠸ ",
	"⠼ ",
	"⠴ ",
	"⠦ ",
	"⠧ ",
	"⠇ ",
	"⠏ ",
}

require("fidget").setup({
	progress = {
		display = {
			done_icon = " ",
			progress_icon = {
				pattern = dots,
				period = 1,
			},
			done_style = "FidgetDone",
			icon_style = "FidgetIcon",
			progress_style = "FidgetProgress",
			group_style = "FidgetGroup",
			format_annote = function(msg)
				return msg.title .. " "
			end,
			format_group_name = function(group)
				return tostring(group) .. ""
			end,
		},
	},
	notification = {
		view = {
			render_message = function(msg, cnt)
				return cnt == 1 and string.format(" %s", msg) or string.format(" (%dx) %s", cnt, msg)
			end,
		},
		window = {
			normal_hl = "FidgetNormal",
			winblend = 0,
			x_padding = 1,
			y_padding = 1,
		},
	},
})
