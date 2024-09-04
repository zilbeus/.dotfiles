require("diffview").setup({
	show_help_hints = true,
	use_icons = true,
	enhanced_diff_hl = true,
	watch_index = true,
})

vim.opt.fillchars = vim.opt.fillchars + "diff:╱"
