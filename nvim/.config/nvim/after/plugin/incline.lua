require("incline").setup({
	window = {
		margin = {
			vertical = 0,
			horizontal = 1,
		},
		padding = 0,
	},
	hide = {
		cursorline = false,
		focused_win = false,
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
					guibg = "#292929",
					guifg = "#bfc5d0",
				},
			}
		end
	end,
})
