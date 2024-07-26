-- LSP settings.
--  This function gets run when an LSP connects to a particular buffer.
function on_attach(client, bufnr)
	--- toggle inlay hints
	-- vim.g.inlay_hints_visible = false
	local function toggle_inlay_hints()
		local enabled = vim.lsp.inlay_hint.is_enabled({ bufnr = bufnr })
		vim.lsp.inlay_hint.enable(not enabled, { bufnr = bufnr })
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

		vim.keymap.set("n", keys, func, { buffer = 0, desc = desc })
	end

	nmap("<leader>th", toggle_inlay_hints, "[T]oggle Inlay [H]ints")
	nmap("<leader>td", toggle_diagnostics, "[T]oggle [D]iagnostics")
end
