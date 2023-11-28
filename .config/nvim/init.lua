vim.g.mapleader = " "
vim.g.maplocalleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"tpope/vim-fugitive",
	"tpope/vim-sleuth",
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "williamboman/mason.nvim", config = true },
			"williamboman/mason-lspconfig.nvim",
			{ "j-hui/fidget.nvim",       opts = {} },
			"folke/neodev.nvim",
		},
	},

	{
		"hrsh7th/nvim-cmp",
		dependencies = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip" },
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = { "rafamadriz/friendly-snippets" }
	},
	{
		"folke/which-key.nvim",
		opts = {
			window = {
				border = "single"
			},
			layout = {
				align = "center"
			}
		}
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = '│' },
				change = { text = '│' },
				delete = { text = '_' },
				topdelete = { text = '‾' },
				changedelete = { text = '~' },
			},
		},
	},

	{
		"projekt0n/github-nvim-theme",
		lazy = false,
		priority = 1000,
		config = function()
		end,
	},

	{
		"p00f/alabaster.nvim",
		priority = 1000,
		config = function()
		end,
	},

	{
		"mcchrish/zenbones.nvim",
		dependencies = {
			"rktjmp/lush.nvim"
		},
		opts = {
			transparent_background = true,
		},
		config = function()
		end
	},

	{
		"nyoom-engineering/oxocarbon.nvim",
		priority = 1000,
		-- config = function()
		-- 	vim.opt.background = "dark"
		-- 	vim.cmd("colorscheme oxocarbon")
		-- end,
	},

	{
		"olimorris/onedarkpro.nvim",
		priority = 1000,
		-- config = function()
		-- 	vim.cmd.colorscheme "onedark_dark"
		-- end
	},

	{
		"nvim-lualine/lualine.nvim"
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			-- chars = '│',
			-- show_trailing_blankline_indent = true,
			-- show_current_context = true,
		},
	},

	{
		"numToStr/Comment.nvim", opts = {}
	},

	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		build = ":TSUpdate",
	},

	{
		"nvim-treesitter/nvim-treesitter-context",
		dependencies = {
			"nvim-treesitter/nvim-treesitter"
		},
		opts = {
			enable = true,
			max_lines = 1,
		},
	},

	{
		"folke/trouble.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},

	{
		"onsails/lspkind.nvim",
		opts = {},
		config = function()
		end,
	},

	{
		"sindrets/diffview.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim"
		},
		opts = {
			use_icons = true,
			enhanced_diff_hl = true,
		},
		config = function()
			-- vim.opt.fillchars = vim.opt.fillchars + 'diff:╱' -- Kitty terminal could solve this issue
			vim.opt.fillchars = vim.opt.fillchars + 'diff:-'
		end,
	},

	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	{
		"fatih/vim-go",
		config = function()
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
		end,
	},
	{
		"b0o/incline.nvim",
		config = function()
			require('incline').setup {
				window = {
					margin = {
						vertical = 0,
						horizontal = 1,
					},
					padding = 0,
				},
				hide = {
					cursorline = false,
					focused_win = false,
					only_win = true,
				},
				render = function(props)
					local fname = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ':t')
					local modified_glyph = {}
					if vim.api.nvim_buf_get_option(props.buf, "modified") then
						modified_glyph = vim.tbl_extend('force', { '[+] ' }, {})
					end
					if props.focused == true then
						return {
							{
								{ " " },
								fname,
								{ " " },
								modified_glyph,
								guibg = "#292929",
								guifg = "#eda601",
							}
						}
					else
						return {
							{
								{ " " },
								fname,
								{ " " },
								modified_glyph,
								guibg = "#292929",
								guifg = "#7a7a7a",
							}
						}
					end
				end
			}
		end
	},
	{
		"creativenull/efmls-configs-nvim",
		dependencies = { "neovim/nvim-lspconfig" }
	},
}, {})

require('nvim-treesitter.configs').setup {
	ensure_installed = { 'c', 'cpp', 'go', 'lua', 'python', 'rust', 'tsx', 'typescript', 'vimdoc', 'vim', 'java' },
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true, disable = { 'python' } },
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = '<c-space>',
			node_incremental = '<c-space>',
			scope_incremental = '<c-s>',
			node_decremental = '<M-space>',
		},
	},
	textobjects = {
		select = {
			enable = true,
			lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				['aa'] = '@parameter.outer',
				['ia'] = '@parameter.inner',
				['af'] = '@function.outer',
				['if'] = '@function.inner',
				['ac'] = '@class.outer',
				['ic'] = '@class.inner',
			},
		},
		move = {
			enable = true,
			set_jumps = true, -- whether to set jumps in the jumplist
			goto_next_start = {
				[']m'] = '@function.outer',
				[']]'] = '@class.outer',
			},
			goto_next_end = {
				[']M'] = '@function.outer',
				[']['] = '@class.outer',
			},
			goto_previous_start = {
				['[m'] = '@function.outer',
				['[['] = '@class.outer',
			},
			goto_previous_end = {
				['[M'] = '@function.outer',
				['[]'] = '@class.outer',
			},
		},
		swap = {
			enable = true,
			swap_next = {
				['<leader>a'] = '@parameter.inner',
			},
			swap_previous = {
				['<leader>A'] = '@parameter.inner',
			},
		},
	},
}

-- LSP settings.
--  This function gets run when an LSP connects to a particular buffer.
local on_attach = function(_, bufnr)
	-- NOTE: Remember that lua is a real programming language, and as such it is possible
	-- to define small helper and utility functions so you don't have to repeat yourself
	-- many times.
	--
	-- In this case, we create a function that lets us more easily define mappings specific
	-- for LSP related items. It sets the mode, buffer and description for us each time.
	local nmap = function(keys, func, desc)
		if desc then
			desc = 'LSP: ' .. desc
		end

		vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
	end

	nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
	nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

	nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
	nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
	nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
	nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
	nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
	nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

	-- See `:help K` for why this keymap
	nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
	nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

	-- Lesser used LSP functionality
	nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
	nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
	nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
	nmap('<leader>wl', function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, '[W]orkspace [L]ist Folders')

	-- Create a command `:Format` local to the LSP buffer
	vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
		vim.lsp.buf.format()
	end, { desc = 'Format current buffer with LSP' })

	nmap('<leader>f', vim.lsp.buf.format, '[F]ormat buffer')
	nmap('<leader>ob', ":Telescope file_browser path=%:p:h select_buffer=true<CR>", '[O]pen File [B]rowser')
	nmap('<leader>hr', ":Gitsigns reset_hunk<CR>", '[R]eset hunk')
	nmap('<leader>hR', ":Gitsigns reset_buffer<CR>", '[R]eset buffer')
	nmap('<leader>hp', ":Gitsigns preview_hunk<CR>", '[P]review hunk')
	nmap('<leader>hb', ":Gitsigns toggle_current_line_blame<CR>", 'Show line [B]lame')
	nmap('<leader>og', ":Git<CR>", '[O]pen [G]it status')
end

-- Enable the following language servers
--  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
--
--  Add any additional override configuration in the following tables. They will be passed to
--  the `settings` field of the server config. You must look up that documentation yourself.
local servers = {
	-- clangd = {},
	-- gopls = {},
	-- pyright = {},
	-- rust_analyzer = {},
	-- tsserver = {},

	lua_ls = {
		Lua = {
			workspace = { checkThirdParty = false },
			telemetry = { enable = false },
		},
	},
}

-- Setup neovim lua configuration
require('neodev').setup()

-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup {
	ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
	function(server_name)
		require('lspconfig')[server_name].setup {
			capabilities = capabilities,
			on_attach = on_attach,
			settings = servers[server_name],
		}
	end,
}

-- nvim-cmp setup
local cmp = require 'cmp'
local luasnip = require 'luasnip'
local lspkind = require('lspkind')

luasnip.config.setup {}

cmp.setup {
	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol_text",
			menu = ({
				buffer = "[Buffer]",
				nvim_lsp = "[LSP]",
				luasnip = "[LuaSnip]",
				nvim_lua = "[Lua]",
				latex_symbols = "[Latex]",
			}),
			before = function(entry, vim_item)
				return vim_item
			end
		})
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	window = {
		completion = {
			border = { '┌', '─', '┐', '│', '┘', '─', '└', '│' },
		},
		documentation = {
			border = { '┌', '─', '┐', '│', '┘', '─', '└', '│' },
		},
	},
	mapping = cmp.mapping.preset.insert {
		['<C-n>'] = cmp.mapping.select_next_item(),
		['<C-p>'] = cmp.mapping.select_prev_item(),
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete {},
		['<CR>'] = cmp.mapping.confirm {
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		},
		['<Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { 'i', 's' }),
		['<S-Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { 'i', 's' }),
	},
	sources = {
		{ name = 'nvim_lsp', keyword_length = 2 },
		{ name = 'luasnip',  keyword_length = 2 },
	},
}

require("telescope").setup {
	defaults = {
		borderchars = {
			'─',
			'│',
			'─',
			'│',
			'┌',
			'┐',
			'┘',
			'└'
		}
	}
}

require("telescope").load_extension "file_browser"
require('nvim-ts-autotag').setup()
require("luasnip.loaders.from_vscode").lazy_load()

vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	underline = false,
	float = {
		header = false,
		border = 'rounded',
		focusable = true,
	}
})
local icons = {
	[vim.diagnostic.severity.ERROR] = "☒",
	[vim.diagnostic.severity.WARN] = "⚠",
	[vim.diagnostic.severity.INFO] = "▣",
	[vim.diagnostic.severity.HINT] = "◉",
}
do
	vim.fn.sign_define("DiagnosticSignError",
		{ text = icons[vim.diagnostic.severity.ERROR], texthl = "DiagnosticSignError" })
	vim.fn.sign_define("DiagnosticSignWarn",
		{ text = icons[vim.diagnostic.severity.WARN], texthl = "DiagnosticSignWarn" })
	vim.fn.sign_define("DiagnosticSignInfo",
		{ text = icons[vim.diagnostic.severity.INFO], texthl = "DiagnosticSignInfo" })
	vim.fn.sign_define("DiagnosticSignHint",
		{ text = icons[vim.diagnostic.severity.HINT], texthl = "DiagnosticSignHint" })
end

require("zq")
