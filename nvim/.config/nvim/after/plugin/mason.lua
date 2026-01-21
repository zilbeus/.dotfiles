require("zq.lsp")
-- Enable the following language servers
--  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
--
--  Add any additional override configuration in the following tables. They will be passed to
--  the `settings` field of the server config. You must look up that documentation yourself.
local servers = {
	gopls = { mason_reg_name = "gopls" },
	["rust_analyzer"] = { mason_reg_name = "rust-analyzer" },
	["ts_ls"] = { mason_reg_name = "typescript-language-server" },
	["lua_ls"] = {
		mason_reg_name = "lua-language-server",
		settings = {
			Lua = {
				workspace = { checkThirdParty = false },
				telemetry = { enable = false },
			},
		},
	},
}

local installed_package_names = require("mason-registry").get_installed_package_names()
for _, v in pairs(vim.tbl_keys(servers)) do
	if not vim.tbl_contains(installed_package_names, servers[v].mason_reg_name) then
		vim.cmd(":MasonInstall " .. servers[v].mason_reg_name)
	end
end

vim.lsp.enable(vim.tbl_keys(servers))

for _, value in pairs(vim.tbl_keys(servers)) do
	vim.lsp.config[value] = {
		capabilities = capabilities,
		on_attach = on_attach,
		settings = servers[value].settings,
	}
end
