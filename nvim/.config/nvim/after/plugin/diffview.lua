require("diffview").setup({
	show_help_hints = true,
	use_icons = true,
	enhanced_diff_hl = true,
	watch_index = true,
	hooks = {
		diff_buf_win_enter = function(bufnr, winid, ctx)
			if ctx.layout_name:match("^diff2") then
				if ctx.symbol == "a" then
					vim.opt_local.winhl = table.concat({
						"DiffChange:DiffDelete",
						"DiffText:DiffDeleteText",
					}, ",")
				elseif ctx.symbol == "b" then
					vim.opt_local.winhl = table.concat({
						"DiffChange:DiffAdd",
						"DiffText:DiffAddText",
					}, ",")
				end
			end
		end,
	},
})

vim.opt.fillchars = vim.opt.fillchars + "diff:╱"
