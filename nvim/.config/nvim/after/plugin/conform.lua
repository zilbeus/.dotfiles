require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		typescript = { "prettierd", "prettier", stop_after_first = true },
		typescriptreact = { "prettierd", "prettier", stop_after_first = true },
		sql = { "sql_formatter" },
		go = { "goimports", "gofmt", "golines" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
	formatters = {
		sql_formatter = {
			args = {
				"-l",
				"postgresql",
				"-c",
				'{\
					"language": "postgresql",\
					"tabWidth": 4,\
					"useTabs": false,\
					"keywordCase": "upper",\
					"linesBetweenQueries": 2\
				}',
			},
		},
	},
})
