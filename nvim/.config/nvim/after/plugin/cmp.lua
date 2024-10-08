-- nvim-cmp setup
local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")

luasnip.config.setup({})

cmp.setup({
	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol_text",
			menu = {
				buffer = "[BUF]",
				nvim_lsp = "[LSP]",
				luasnip = "[SNP]",
				nvim_lua = "[LUA]",
				latex_symbols = "[LTX]",
			},
			before = function(entry, vim_item)
				return vim_item
			end,
		}),
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	window = {
		completion = {
			border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
			-- border = { "┏", "━", "┓", "┃", "┛", "━", "┗", "┃" },
			winhighlight = "Normal:Pmenu,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:Search",
		},
		-- documentation = {
		-- 	border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
		-- },
	},
	mapping = cmp.mapping.preset.insert({
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete({}),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	sources = {
		{ name = "nvim_lsp", keyword_length = 2 },
		{ name = "luasnip", keyword_length = 2 },
	},
})
