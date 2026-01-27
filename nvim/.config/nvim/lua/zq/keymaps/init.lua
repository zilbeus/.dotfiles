vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files resume=true<cr>", { desc = "search files" })
vim.keymap.set("n", "<leader>sk", "<cmd>FzfLua keymaps<cr>", { desc = "search keymaps" })
vim.keymap.set("n", "<leader>sh", "<cmd>FzfLua highlights<cr>", { desc = "search highlights" })
vim.keymap.set("n", "<leader>sc", "<cmd>FzfLua commands<cr>", { desc = "search commands" })
vim.keymap.set("n", "<leader>gbb", "<cmd>FzfLua git_branches<cr>", { desc = "search git branches" })
vim.keymap.set("n", "<leader>gc", "<cmd>FzfLua git_commits<cr>", { desc = "search git commits" })
vim.keymap.set("n", "<leader>gfg", "<cmd>FzfLua git_files<cr>", { desc = "search git files" })
vim.keymap.set("n", "<leader>ss", "<cmd>FzfLua live_grep resume=true<cr>", { desc = "search pattern" })
vim.keymap.set("n", "<leader>sw", "<cmd>FzfLua grep_cword resume=true<cr>", { desc = "search word" })
vim.keymap.set("n", "<leader>fr", "<cmd>FzfLua oldfiles<cr>", { desc = "search recent files" })
vim.keymap.set("n", "<leader>bb", "<cmd>FzfLua buffers<cr>", { desc = "search buffers" })
vim.keymap.set("n", "<leader>hs", "<cmd>FzfLua helptags<cr>", { desc = "search help docs" })

-- DIAGNOSTICS
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set(
    "n",
    "<leader>q",
    "<cmd>FzfLua diagnostics_document<cr>",
    { desc = "Open buffer diagnostics list" }
)
vim.keymap.set("n", "<leader>Q", "<cmd>FzfLua diagnostics_workspace<cr>", { desc = "Open diagnostics list" })

-- HALF PAGE NAVIGATION
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- GIT
vim.keymap.set("n", "<leader>gg", "<cmd>CodeDiff<cr>", { desc = "Open Git status window" })

-- FILE BROWSERS
vim.keymap.set("n", "<leader>ft", "<cmd>Neotree filesystem reveal right toggle<cr>", { desc = "Open file tree" })
vim.keymap.set(
	"n",
	"<leader>fT",
	"<cmd>Neotree filesystem reveal current toggle<cr>",
	{ desc = "Open file tree in current buffer" }
)

-- DIFFVIEW
vim.keymap.set("n", "<leader>ghr", "<cmd>DiffviewFileHistory<cr>", { desc = "repository history" })
vim.keymap.set("n", "<leader>ghf", "<cmd>DiffviewFileHistory --follow %<cr>", { desc = "file history" })
vim.keymap.set("v", "<leader>ghv", "<esc><cmd>'<,'>DiffviewFileHistory --follow<cr>", { desc = "range history" })
vim.keymap.set("n", "<leader>ghl", "<cmd>.DiffviewFileHistory --follow<cr>", { desc = "line history" })

-- GITSIGNS
vim.keymap.set("n", "<leader>ghh", require("gitsigns").preview_hunk, { desc = "preview git hunk" })
vim.keymap.set("n", "<leader>gR", require("gitsigns").reset_hunk, { desc = "reset git hunk" })
vim.keymap.set("n", "ghh", function()
	require("gitsigns").nav_hunk("next", nil)
end, { desc = "go to next git hunk" })
vim.keymap.set("n", "ghp", function()
	require("gitsigns").nav_hunk("prev", nil)
end, { desc = "go to previous git hunk" })
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

-- SESSIONS
vim.keymap.set("n", "<leader>gs", require("mini.sessions").select, { desc = "Select session" })

-- BLAME
vim.keymap.set("n", "<leader>gbl", "<cmd>BlameToggle<cr>", { desc = "Git blame" })

-- UNDOTREE
vim.keymap.set("n", "<leader>ou", "<cmd>UndotreeToggle<cr>", { desc = "Undotree" })

-- COMMENTS
vim.keymap.set("n", "<leader>gtt", "<cmd>TodoLocList<cr>", { desc = "list TODO comments" })

-- TABS
vim.keymap.set("n", "<leader>tn", "<cmd>tabnext<cr>", { desc = "next tab" })
vim.keymap.set("n", "<A-L>", "<cmd>tabnext<cr>", { desc = "next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabprevious<cr>", { desc = "previous tab" })
vim.keymap.set("n", "<A-H>", "<cmd>tabprevious<cr>", { desc = "previous tab" })
vim.keymap.set("n", "<leader>tc", "<cmd>tabnew<cr>", { desc = "new tab" })
vim.keymap.set("n", "<leader>tk", "<cmd>tabclose<cr>", { desc = "kill tab" })

-- ILLUMINATE
vim.keymap.set("n", "<leader>ti", "<cmd>IlluminateToggle<cr>", { desc = "toggle cursor word match highlight" })

-- OBSIDIAN NOTES
vim.keymap.set("n", "<leader>nnt", "<cmd>ObsidianNewNoteFromTemplate<cr>", { desc = "new obsidian note from template" })
vim.keymap.set("n", "<leader>nnn", "<cmd>ObsidianNew<cr>", { desc = "new obsidian note" })
vim.keymap.set("v", "<leader>ne", "<cmd>ObsidianExtractNote<cr>", { desc = "extract selection to new obsidian note" })
vim.keymap.set("n", "<leader>nt", "<cmd>ObsidianTemplate<cr>", { desc = "apply template to obsidian note" })
vim.keymap.set("n", "<leader>nf", "<cmd>ObsidianSearch<cr>", { desc = "find obsidian note" })
vim.keymap.set("n", "<leader>no", "<cmd>ObsidianOpen<cr>", { desc = "open note in obsidian" })

-- DBUI
vim.keymap.set("n", "<leader>od", "<cmd>DBUIToggle<cr>", { desc = "open DB viewer" })

-- BOOKMARKS
vim.keymap.set("n", "<leader>mm", "<cmd>BookmarksMark<cr>", { desc = "add bookmark" })
vim.keymap.set("n", "<leader>mt", "<cmd>BookmarksTree<cr>", { desc = "open bookmarks tree" })
vim.keymap.set("n", "<leader>mc", "<cmd>BookmarksCommands<cr>", { desc = "open bookmarks commands list" })
vim.keymap.set("n", "<leader>mn", "<cmd>BookmarksGotoNextInList<cr>", { desc = "goto next bookmark in current list" })
vim.keymap.set("n", "<leader>mp", "<cmd>BookmarksGotoPrevInList<cr>", { desc = "goto prev bookmark in current list" })
vim.keymap.set("n", "<leader>md", "<cmd>BookmarksDesc<cr>", { desc = "add description to bookmark under cursor" })
vim.keymap.set("n", "<leader>mi", "<cmd>BookmarksInfoCurrentBookmark<cr>", { desc = "display current bookmark info" })
vim.keymap.set("n", "<leader>mf", "<cmd>BookmarksGrep<cr>", { desc = "find contents in bookmarked files" })
vim.keymap.set("n", "<leader>mg", "<cmd>BookmarksGrep<cr>", { desc = "goto bookmark at current active list" })

-- TERMINALS
vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "toggle terminal" })
vim.keymap.set("n", "<leader>tT", "<cmd>TermNew direction=horizontal size=20<cr>", { desc = "create new terminal" })
vim.keymap.set("n", "<leader>ts", "<cmd>TermSelect<cr>", { desc = "select terminal" })
vim.keymap.set("n", "<leader>tr", "<cmd>ToggleTermSetName<cr>", { desc = "rename terminal" })

require("zq.keymaps.lsp")
