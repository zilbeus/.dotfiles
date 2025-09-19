local c = require("zq.theme.monochrome.palette")

require("incline").setup({
	window = {
		margin = {
			vertical = 1,
			horizontal = 1,
		},
		padding = 0,
	},
	hide = {
		cursorline = false,
		focused_win = true,
		only_win = true,
	},
	render = function(props)
		local fname = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
		local modified_glyph = {}
		if vim.api.nvim_buf_get_option(props.buf, "modified") then
			modified_glyph = vim.tbl_extend("force", { "[+] " }, {})
		end
		if props.focused == true then
			return {
				{
					{ " " },
					fname,
					{ " " },
					modified_glyph,
					guifg = "#292929",
					guibg = "#bfc5d0",
				},
			}
		else
			return {
				{
					{ " " },
					fname,
					{ " " },
					modified_glyph,
					guifg = c.white,
					guibg = c.darker_black,
				},
			}
		end
	end,
})
