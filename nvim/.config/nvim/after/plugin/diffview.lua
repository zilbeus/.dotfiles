require("diffview").setup({
	show_help_hints = true,
	use_icons = true,
	enhanced_diff_hl = true,
	watch_index = true,
	view = {
		merge_tool = {
			layout = "diff3_mixed",
		}
	},
	hooks = {
		diff_buf_win_enter = function(bufnr, winid, ctx)
			-- fixes underline in diffview buffers
			vim.wo[winid].culopt = 'number'
			if ctx.layout_name:match("^diff2") then
				if ctx.symbol == "a" then
					vim.opt_local.winhl = table.concat({
						"DiffChange:DiffDelete",
						"DiffText:DiffDeleteText",
						"DiffAdd:DiffviewDiffAddAsDelete",
						"DiffDelete:DiffviewDiffDeleteDim",
					}, ",")
				elseif ctx.symbol == "b" then
					vim.opt_local.winhl = table.concat({
						"DiffChange:DiffAdd",
						"DiffText:DiffAddText",
						"DiffAdd:DiffviewDiffAdd",
						"DiffDelete:DiffviewDiffDeleteDim",
					}, ",")
				end
			end
			if ctx.layout_name:match("^diff3") then
				if ctx.symbol == "a" then
					vim.opt_local.winhl = table.concat({
						-- 	-- "DiffChange:DiffDelete",
						-- 	-- "DiffText:DiffDeleteText",
						-- 	-- -- "DiffAdd:DiffviewDiffAddAsDelete",
						"DiffDelete:DiffviewDiffDeleteDim",
					}, ",")
				elseif ctx.symbol == "b" then
					vim.opt_local.winhl = table.concat({
						"DiffChange:DiffAdd",
						"DiffText:DiffAddText",
						"DiffAdd:DiffviewDiffAdd",
						"DiffDelete:DiffviewDiffDeleteDim",
					}, ",")
				elseif ctx.symbol == "c" then
					vim.opt_local.winhl = table.concat({
						"DiffChange:DiffAdd",
						"DiffText:DiffAddText",
						"DiffAdd:DiffviewDiffAdd",
						"DiffDelete:DiffviewDiffDeleteDim",
					}, ",")
				end
			end
		end,
	},
})

vim.opt.fillchars = vim.opt.fillchars + "diff:╱"
