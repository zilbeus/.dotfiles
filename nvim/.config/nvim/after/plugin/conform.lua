local gitsigns = require("gitsigns")

local function format_git_hunks()
	local hunks = gitsigns.get_hunks(0)

	if hunks == nil then
		hunks = {}
		local buf_status = vim.b.gitsigns_status_dict
		-- if file is untracked format it whole
		if buf_status.added == nil then
			hunks[1] = {
				type = "untracked", -- custom type, for later processing
				added = { start = 0, count = vim.api.nvim_buf_line_count(0) },
			}
		end
	end

	for i = #hunks, 1, -1 do
		local hunk = hunks[i]
		if hunk ~= nil and hunk.type ~= "delete" then
			local start = math.max(1, hunk.added.start) -- on untracked files, start is 0
			local last = start + hunk.added.count
			-- nvim_buf_get_lines uses zero-based indexing -> subtract from last
			local last_hunk_line = vim.api.nvim_buf_get_lines(0, last - 2, last - 1, true)[1]
			local range = { start = { start, 0 }, ["end"] = { last - 1, last_hunk_line:len() } }
			require("conform").format({ async = false, range = range })
		end
	end
end

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		typescript = { "prettierd", "prettier", stop_after_first = true },
		typescriptreact = { "prettierd", "prettier", stop_after_first = true },
		sql = { "sql_formatter" },
		go = { "goimports", "gofmt", "golines" },
		java = { "google-java-format" },
	},
	format_on_save = function(bufnr)
		local format_hunks_by_default = { "java" }

		if vim.tbl_contains(format_hunks_by_default, vim.bo[bufnr].filetype) then
			format_git_hunks()
			return
		end

		if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
			return
		end

		local bufname = vim.api.nvim_buf_get_name(bufnr)
		if bufname:match("/node_modules/") then
			return
		end

		return { timeout_ms = 500, lsp_format = "fallback" }
	end,
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

vim.api.nvim_create_user_command("FormatDisable", function(args)
	if args.bang then
		-- FormatDisable! will disable formatting just for this buffer
		vim.b.disable_autoformat = true
	else
		vim.g.disable_autoformat = true
	end
end, {
	desc = "Disable autoformat-on-save",
	bang = true,
})

vim.api.nvim_create_user_command("FormatEnable", function()
	vim.b.disable_autoformat = false
	vim.g.disable_autoformat = false
end, {
	desc = "Re-enable autoformat-on-save",
})
