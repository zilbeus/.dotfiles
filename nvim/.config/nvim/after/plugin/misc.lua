require("nvim-ts-autotag").setup()
require("luasnip.loaders.from_vscode").lazy_load()

vim.opt.fillchars = vim.opt.fillchars + "foldopen:,foldclose:"
