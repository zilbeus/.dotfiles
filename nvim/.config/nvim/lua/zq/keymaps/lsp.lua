local nmap = function(keys, func, desc)
	if desc then
		desc = "LSP: " .. desc
	end

	vim.keymap.set("n", keys, func, { desc = desc })
end

nmap("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")

nmap("gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
nmap("gI", vim.lsp.buf.implementation, "[G]oto [I]mplementation")
nmap("<leader>D", vim.lsp.buf.type_definition, "Type [D]efinition")
nmap("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")
vim.keymap.set(
	"n",
	"<leader>ca",
	"<cmd>FzfLua lsp_code_actions hls.border=FzfLuaBorderInvisible<cr>",
	{ desc = "code actions" }
)
vim.keymap.set(
	"n",
	"<leader>cs",
	"<cmd>FzfLua lsp_document_symbols hls.border=FzfLuaBorderInvisible<cr>",
	{ desc = "code symbols" }
)
vim.keymap.set(
	"n",
	"<leader>cr",
	"<cmd>FzfLua lsp_references hls.border=FzfLuaBorderInvisible<cr>",
	{ desc = "code references" }
)
vim.keymap.set(
	"n",
	"<leader>sd",
	"<cmd>FzfLua diagnostics_workspace hls.border=FzfLuaBorderInvisible<cr>",
	{ desc = "search diagnostics" }
)

-- See `:help K` for why this keymap
nmap("K", vim.lsp.buf.hover, "Hover Documentation")
nmap("<leader>dS", vim.lsp.buf.signature_help, "Signature Documentation")

-- Lesser used LSP functionality
nmap("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
nmap("<leader>wa", vim.lsp.buf.add_workspace_folder, "[W]orkspace [A]dd Folder")
nmap("<leader>wr", vim.lsp.buf.remove_workspace_folder, "[W]orkspace [R]emove Folder")
nmap("<leader>wl", function()
	print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, "[W]orkspace [L]ist Folders")

-- Create a command `:Format` local to the LSP buffer
vim.api.nvim_buf_create_user_command(0, "Format", function(_)
	vim.lsp.buf.format()
end, { desc = "Format current buffer with LSP" })

nmap("<leader>bf", vim.lsp.buf.format, "[F]ormat buffer")
nmap("<leader>ob", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", "[O]pen File [B]rowser")
nmap("<leader>hr", ":Gitsigns reset_hunk<CR>", "[R]eset hunk")
nmap("<leader>hR", ":Gitsigns reset_buffer<CR>", "[R]eset buffer")
nmap("<leader>hp", ":Gitsigns preview_hunk<CR>", "[P]review hunk")
nmap("<leader>hb", ":Gitsigns toggle_current_line_blame<CR>", "Show line [B]lame")
