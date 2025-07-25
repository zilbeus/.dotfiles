local builtin = require("statuscol.builtin")
require("statuscol").setup({
	relculright = true,
	bt_ignore = { "nofile" },
	segments = {
		-- {
		-- 	sign = { namespace = { "diagnostic/signs" }, maxwidth = 2, auto = true },
		-- 	click = "v:lua.ScSa",
		-- },
		{
			text = { "%s" },
			click = "v:lua.ScSa",
		},
		{
			text = { builtin.lnumfunc },
			condition = { true, builtin.not_empty },
			click = "v:lua.ScLa",
		},
		{
			text = { "🭵" },
			condition = { true },
			hl = "StatusColSep",
		},
		-- {
		-- 	text = { " " },
		-- 	condition = { true },
		-- 	hl = "StatusColSepMargin",
		-- },
		-- {
		-- 	sign = { namespace = { "gitsign" }, maxwidth = 1, auto = true },
		-- 	click = "v:lua.ScSa",
		-- },
	},
})
