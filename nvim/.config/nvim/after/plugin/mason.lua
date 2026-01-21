require("zq.lsp")
-- Enable the following language servers
--  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
--
--  Add any additional override configuration in the following tables. They will be passed to
--  the `settings` field of the server config. You must look up that documentation yourself.
local servers = {
	-- clangd = {},
	gopls = {},
	-- pyright = {},
	["rust-analyzer"] = {},
	["typescript-language-server"] = {},
	["lua-language-server"] = {
		Lua = {
			workspace = { checkThirdParty = false },
			telemetry = { enable = false },
		},
	},
}

-- Ensure the servers above are installed
local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
	-- ensure_installed = vim.tbl_keys(servers),
})

for _, value in pairs(vim.tbl_keys(servers)) do
	vim.lsp.config[value] = {
		capabilities = capabilities,
		on_attach = on_attach,
		settings = servers[value],
	}
end

-- mason_lspconfig.setup_handlers({
-- 	function(server_name)
-- 		if server_name == "jdtls" then
-- 			return
-- 		end
-- 		require("lspconfig")[server_name].setup({
-- 			capabilities = capabilities,
-- 			on_attach = on_attach,
-- 			settings = servers[server_name],
-- 		})
-- 	end,
-- })
