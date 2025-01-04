vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.keymap.set("n", "<leader>rf", require("telescope.builtin").oldfiles, { desc = "[rf] Find recently opened files" })
vim.keymap.set("n", "<leader>b", require("telescope.builtin").buffers, { desc = "[b] Find existing buffers" })
vim.keymap.set("n", "<leader>gF", require("telescope.builtin").git_files, { desc = "Search [G]it [F]iles" })
vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sk", require("telescope.builtin").keymaps, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sH", require("telescope.builtin").highlights, { desc = "[S]earch [H]ighlights" })
vim.keymap.set("n", "<leader>sb", require("telescope.builtin").git_branches, { desc = "search git branches" })
vim.keymap.set("n", "<leader>fs", "<cmd>FzfLua files hls.border=FzfLuaBorderInvisible<cr>", { desc = "search files" })
vim.keymap.set(
	"n",
	"<leader>hs",
	"<cmd>FzfLua helptags hls.border=FzfLuaBorderInvisible<cr>",
	{ desc = "search help docs" }
)

-- DIAGNOSTICS
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set(
	"n",
	"<leader>q",
	"<cmd>Trouble diagnostics toggle focus=true filter.buf=0<cr>",
	{ desc = "Open buffer diagnostics list" }
)
vim.keymap.set("n", "<leader>Q", "<cmd>Trouble diagnostics toggle focus=true<cr>", { desc = "Open diagnostics list" })

-- HALF PAGE NAVIGATION
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- NEOGIT
vim.keymap.set("n", "<leader>gg", "<cmd>Neogit<cr>", { desc = "Open Git status window" })

-- NEOTREE
-- vim.keymap.set("n", "<leader>gf", "<cmd>Neotree<cr>", { desc = "Open file tree" })
vim.keymap.set(
	"n",
	"<leader>kf",
	'<cmd>lua require("neo-tree.command").execute({ action = "close" })<cr>',
	{ desc = "[K]ill [F]ile tree" }
)

-- MINI.FILES
vim.keymap.set("n", "<leader>gf", require("mini.files").open, { desc = "Open file tree" })

-- DIFFVIEW
vim.keymap.set("n", "<leader>gH", "<cmd>DiffviewFileHistory<cr>", { desc = "repository history" })
vim.keymap.set("n", "<leader>ghf", "<cmd>DiffviewFileHistory --follow %<cr>", { desc = "file history" })
vim.keymap.set("v", "<leader>ghv", "<esc><cmd>'<,'>DiffviewFileHistory --follow<cr>", { desc = "range history" })
vim.keymap.set("n", "<leader>ghl", "<cmd>.DiffviewFileHistory --follow<cr>", { desc = "line history" })

-- GITSIGNS
vim.keymap.set("n", "<leader>gd", require("gitsigns").preview_hunk, { desc = "Open [G]it Hunk [D]iff" })
vim.keymap.set("n", "<leader>gr", require("gitsigns").reset_hunk, { desc = "[R]eset [G]it Hunk" })
vim.keymap.set("n", "<leader>ghn", require("gitsigns").next_hunk, { desc = "[N]ext [G]it [H]unk" })
vim.keymap.set("n", "<leader>ghp", require("gitsigns").prev_hunk, { desc = "[P]revious [G]it [H]unk" })
vim.keymap.set("n", "<leader>Gsw", require("gitsigns").toggle_word_diff, { desc = "toggle word diff" })
vim.keymap.set("n", "<leader>Gsl", require("gitsigns").toggle_linehl, { desc = "toggle line diff" })
vim.keymap.set("n", "<leader>Gsd", require("gitsigns").toggle_deleted, { desc = "toggle deleted line diff" })

-- BUFFER NAVIGATION
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

vim.keymap.set("n", "<S-h>", "20zh", { desc = "Scroll buffer to the left" })
vim.keymap.set("n", "<S-l>", "20zl", { desc = "Scroll buffer to the right" })

-- GLANCE
vim.keymap.set("n", "<leader>gD", "<cmd>Glance definitions<cr>", { desc = "Peek definitions" })
vim.keymap.set("n", "<leader>gR", "<cmd>Glance references<cr>", { desc = "Peek references" })
vim.keymap.set("n", "<leader>gt", "<cmd>Glance type_definitions<cr>", { desc = "Peek type definitions" })
vim.keymap.set("n", "<leader>gi", "<cmd>Glance implementations<cr>", { desc = "Peek implementations" })

-- SESSIONS
vim.keymap.set("n", "<leader>gs", require("mini.sessions").select, { desc = "Select session" })

-- BLAME
vim.keymap.set("n", "<leader>gb", "<cmd>BlameToggle<cr>", { desc = "Git blame" })

-- UNDOTREE
vim.keymap.set("n", "<leader>ou", "<cmd>UndotreeToggle<cr>", { desc = "Undotree" })

-- COMMENTS
vim.keymap.set("n", "<leader>gT", "<cmd>TodoLocList<cr>", { desc = "list TODO comments" })

-- TABS
vim.keymap.set("n", "<leader>tn", "<cmd>tabnext<cr>", { desc = "next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabprevious<cr>", { desc = "previous tab" })
vim.keymap.set("n", "<leader>tN", "<cmd>tabnew<cr>", { desc = "new tab" })
vim.keymap.set("n", "<leader>tk", "<cmd>tabclose<cr>", { desc = "kill tab" })

-- ILLUMINATE
vim.keymap.set("n", "<leader>ti", "<cmd>IlluminateToggle<cr>", { desc = "toggle cursor word match highlight" })

-- OBSIDIAN NOTES
vim.keymap.set("n", "<leader>nn", "<cmd>ObsidianNewNoteFromTemplate<cr>", { desc = "new obsidian note from template" })
vim.keymap.set("n", "<leader>nN", "<cmd>ObsidianNew<cr>", { desc = "new obsidian note" })
vim.keymap.set("v", "<leader>ne", "<cmd>ObsidianExtractNote<cr>", { desc = "extract selection to new obsidian note" })
vim.keymap.set("n", "<leader>nt", "<cmd>ObsidianTemplate<cr>", { desc = "apply template to obsidian note" })
vim.keymap.set("n", "<leader>nf", "<cmd>ObsidianSearch<cr>", { desc = "find obsidian note" })
vim.keymap.set("n", "<leader>no", "<cmd>ObsidianOpen<cr>", { desc = "open note in obsidian" })

require("zq.keymaps.lsp")
