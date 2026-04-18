local wk = require("which-key")
wk.add({
	{ "<leader>d", group = "debugger" },
})
vim.keymap.set("n", "<leader>dd", "<cmd>DapToggleBreakpoint<cr>", { desc = "toggle breakpoint" })
vim.keymap.set("n", "<leader>dD", "<cmd>DapClearBreakpoints<cr>", { desc = "clear breakpoints" })
vim.keymap.set("n", "<leader>dn", "<cmd>DapNew<cr>", { desc = "new debug session" })
vim.keymap.set("n", "<leader>dc", "<cmd>DapContinue<cr>", { desc = "continue" })
vim.keymap.set("n", "<leader>dsi", "<cmd>DapStepInto<cr>", { desc = "step into" })
vim.keymap.set("n", "<leader>dss", "<cmd>DapStepOver<cr>", { desc = "step over" })
vim.keymap.set("n", "<leader>dso", "<cmd>DapStepOut<cr>", { desc = "step out" })
vim.keymap.set("n", "<leader>dvv", "<cmd>DapStepOut<cr>", { desc = "open debugger menu" })
vim.keymap.set("n", "<leader>dvc", "<cmd>DapStepOut<cr>", { desc = "close debugger menu" })
