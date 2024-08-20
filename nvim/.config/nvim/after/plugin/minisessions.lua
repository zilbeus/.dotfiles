require("mini.sessions").setup({
	file = "",
	directory = vim.fn.stdpath("config") .. "/sessions/",
	autoread = false,
})
