local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

require("telescope").setup({
	defaults = {
		layout_strategy = "vertical",
		layout_config = {
			vertical = { width = { padding = 0 }, mirror = true, prompt_position = "top", height = 0.60, anchor = "S" },
		},
		path_display = function(opts, path)
			local tail = require("telescope.utils").path_tail(path)
			return string.format("%s -- (%s)", tail, path)
		end,
		-- borderchars = {
		-- 	"─",
		-- 	"│",
		-- 	"─",
		-- 	"│",
		-- 	"┌",
		-- 	"┐",
		-- 	"┘",
		-- 	"└",
		-- },
		borderchars = {
			"━",
			"┃",
			"━",
			"┃",
			"┏",
			"┓",
			"┛",
			"┗",
		},
	},
	pickers = {
		git_branches = {
			mappings = {
				n = {
					["gdf"] = function(prompt_bufnr)
						local selection = action_state.get_selected_entry()
						local value = selection.value
						actions.close(prompt_bufnr)
						vim.cmd(
							string.format(
								"DiffviewFileHistory --right-only --no-merges --range=%s... --follow %%",
								value
							)
						)
					end,
					["gdb"] = function(prompt_bufnr)
						local selection = action_state.get_selected_entry()
						local value = selection.value
						actions.close(prompt_bufnr)
						vim.cmd(string.format("DiffviewOpen --right-only --no-merges %s... --imply-local", value))
					end,
				},
			},
		},
	},
})

require("telescope").load_extension("file_browser")
