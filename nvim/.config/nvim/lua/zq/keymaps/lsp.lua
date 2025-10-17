local nmap = function(keys, func, desc)
	if desc then
		desc = "LSP: " .. desc
	end

	vim.keymap.set("n", keys, func, { desc = desc })
end

nmap("<leader>csr", vim.lsp.buf.rename, "rename symbol")

vim.keymap.set(
	"n",
	"<leader>ci",
	"<cmd>FzfLua lsp_implementations  jump1=true<cr>",
	{ desc = "implementations" }
)
vim.keymap.set(
	"n",
	"<leader>cdd",
	"<cmd>FzfLua lsp_definitions  jump1=true<cr>",
	{ desc = "definitions" }
)
vim.keymap.set(
	"n",
	"gdd",
	"<cmd>FzfLua lsp_definitions  jump1=true<cr>",
	{ desc = "definitions" }
)
vim.keymap.set("n", "gdD", "<cmd>Glance definitions<cr>", { desc = "Peek definitions" })
vim.keymap.set(
	"n",
	"<leader>cdt",
	"<cmd>FzfLua lsp_typedefs  jump1=true<cr>",
	{ desc = "type definitions" }
)
vim.keymap.set(
	"n",
	"gdt",
	"<cmd>FzfLua lsp_typedefs  jump1=true<cr>",
	{ desc = "type definitions" }
)
vim.keymap.set("n", "gdT", "<cmd>Glance type_definitions<cr>", { desc = "Peek type definitions" })
vim.keymap.set(
	"n",
	"<leader>ca",
	"<cmd>FzfLua lsp_code_actions<cr>",
	{ desc = "code actions" }
)
vim.keymap.set("n", "gdI", "<cmd>Glance implementations<cr>", { desc = "Peek implementations" })
vim.keymap.set("n", "gdR", "<cmd>Glance references<cr>", { desc = "Peek references" })
vim.keymap.set(
	"n",
	"<leader>css",
	"<cmd>FzfLua lsp_document_symbols<cr>",
	{ desc = "code symbols" }
)
vim.keymap.set(
	"n",
	"<leader>cr",
	"<cmd>FzfLua lsp_references  jump1=true<cr>",
	{ desc = "code references" }
)
vim.keymap.set(
	"n",
	"<leader>sd",
	"<cmd>FzfLua diagnostics_workspace<cr>",
	{ desc = "search diagnostics" }
)
vim.keymap.set(
	"n",
	"<leader>cS",
	"<cmd>FzfLua lsp_live_workspace_symbols<cr>",
	{ desc = "workspace symbols" }
)

vim.keymap.set(
	"n",
	"gS",
	"<cmd>FzfLua lsp_live_workspace_symbols<cr>",
	{ desc = "workspace symbols" }
)

-- See `:help K` for why this keymap
nmap("K", vim.lsp.buf.hover, "Hover Documentation")
nmap("<leader>ch", vim.lsp.buf.signature_help, "Signature Documentation")

-- Lesser used LSP functionality
nmap("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")

-- Create a command `:Format` local to the LSP buffer
vim.api.nvim_buf_create_user_command(0, "Format", function(_)
	vim.lsp.buf.format()
end, { desc = "Format current buffer with LSP" })

nmap("<leader>bf", vim.lsp.buf.format, "[F]ormat buffer")
nmap("<leader>hrr", ":Gitsigns reset_hunk<CR>", "[R]eset hunk")
nmap("<leader>hrb", ":Gitsigns reset_buffer<CR>", "[R]eset buffer")
nmap("<leader>hp", ":Gitsigns preview_hunk<CR>", "[P]review hunk")
nmap("<leader>hb", ":Gitsigns toggle_current_line_blame<CR>", "Show line [B]lame")
