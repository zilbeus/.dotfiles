local bar = "▍"
require("gitsigns").setup({
	signs = {
		add = { text = bar },
		change = { text = bar },
		untracked = { text = bar },
		delete = { text = bar },
		topdelete = { text = "▶" },
		changedelete = { text = bar },
	},
})
