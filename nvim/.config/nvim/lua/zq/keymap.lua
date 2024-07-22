vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.keymap.set("n", "<leader>rf", require("telescope.builtin").oldfiles, { desc = "[rf] Find recently opened files" })
vim.keymap.set("n", "<leader>b", require("telescope.builtin").buffers, { desc = "[b] Find existing buffers" })
vim.keymap.set("n", "<leader>gF", require("telescope.builtin").git_files, { desc = "Search [G]it [F]iles" })
vim.keymap.set("n", "<leader>sf", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })

-- DIAGNOSTICS
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", "<cmd>Trouble<cr>", { desc = "Open diagnostics list" })

-- HALF PAGE NAVIGATION
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- NEOGIT
vim.keymap.set("n", "<leader>gg", "<cmd>Neogit<cr>", { desc = "Open Git status window" })

-- NEOTREE
vim.keymap.set("n", "<leader>gf", "<cmd>Neotree<cr>", { desc = "Open file tree" })

-- DIFFVIEW
vim.keymap.set("n", "<leader>gh", "<cmd>DiffviewFileHistory<cr>", { desc = "Open [G]it File [H]istory view" })
