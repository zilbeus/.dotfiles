-- LSP settings.
--  This function gets run when an LSP connects to a particular buffer.
function on_attach(client, bufnr)
	--- toggle inlay hints
	vim.g.inlay_hints_visible = false
	local function toggle_inlay_hints()
		if vim.g.inlay_hints_visible then
			vim.g.inlay_hints_visible = false
			vim.lsp.inlay_hint(bufnr, false)
		else
			if client.server_capabilities.inlayHintProvider then
				vim.g.inlay_hints_visible = true
				vim.lsp.inlay_hint(bufnr, true)
			else
				print("Inlay hints not available")
			end
		end
	end

	--- toggle diagnostics
	vim.g.diagnostics_visible = true
	local function toggle_diagnostics()
		if vim.g.diagnostics_visible then
			vim.g.diagnostics_visible = false
			vim.diagnostic.disable()
		else
			vim.g.diagnostics_visible = true
			vim.diagnostic.enable()
		end
	end

	local nmap = function(keys, func, desc)
		if desc then
			desc = "LSP: " .. desc
		end

		vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
	end

	nmap("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
	nmap("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")

	nmap("gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
	nmap("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
	nmap("gI", vim.lsp.buf.implementation, "[G]oto [I]mplementation")
	nmap("<leader>D", vim.lsp.buf.type_definition, "Type [D]efinition")
	nmap("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
	nmap("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")

	-- See `:help K` for why this keymap
	nmap("K", vim.lsp.buf.hover, "Hover Documentation")
	nmap("<C-k>", vim.lsp.buf.signature_help, "Signature Documentation")

	-- Lesser used LSP functionality
	nmap("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
	nmap("<leader>wa", vim.lsp.buf.add_workspace_folder, "[W]orkspace [A]dd Folder")
	nmap("<leader>wr", vim.lsp.buf.remove_workspace_folder, "[W]orkspace [R]emove Folder")
	nmap("<leader>wl", function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, "[W]orkspace [L]ist Folders")

	-- Create a command `:Format` local to the LSP buffer
	vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
		vim.lsp.buf.format()
	end, { desc = "Format current buffer with LSP" })

	nmap("<leader>f", vim.lsp.buf.format, "[F]ormat buffer")
	nmap("<leader>ob", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", "[O]pen File [B]rowser")
	nmap("<leader>hr", ":Gitsigns reset_hunk<CR>", "[R]eset hunk")
	nmap("<leader>hR", ":Gitsigns reset_buffer<CR>", "[R]eset buffer")
	nmap("<leader>hp", ":Gitsigns preview_hunk<CR>", "[P]review hunk")
	nmap("<leader>hb", ":Gitsigns toggle_current_line_blame<CR>", "Show line [B]lame")
	nmap("<leader>og", ":Git<CR>", "[O]pen [G]it status")

	nmap("<leader>th", toggle_inlay_hints, "[T]oggle Inlay [H]ints")
	nmap("<leader>td", toggle_diagnostics, "[T]oggle [D]iagnostics")
end
