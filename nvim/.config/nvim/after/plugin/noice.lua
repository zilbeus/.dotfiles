require("noice").setup({
	views = {
		notify = {
			replace = true,
		},
	},
	cmdline = {
		enabled = true,
		view = "cmdline",
	},
	lsp = {
		progress = {
			view = "notify",
		},
		signature = {
			enabled = true,
		},
	},
	presets = {
		bottom_search = true,
		lsp_doc_border = true,
		command_palette = true,
		inc_rename = true,
		long_message_to_split = true,
	},
	routes = {
		{
			filter = {
				event = "msg_show",
				kind = "",
				find = "written",
			},
			opts = {
				skip = true,
			},
		},
	},
})

local stages_util = require("notify.stages.util")
local MARGIN_VERTICAL = 1

local function no_anim_with_margins(direction)
	return {
		function(state)
			local next_height = state.message.height + 2
			local next_row = stages_util.available_slot(state.open_windows, next_height, direction)
			if not next_row then
				return nil
			end

			local is_first_window = state.open_windows == 0
			if is_first_window then
				if direction == stages_util.DIRECTION.TOP_DOWN then
					next_row = next_row + MARGIN_VERTICAL
				elseif direction == stages_util.DIRECTION.BOTTOM_UP then
					next_row = next_row - MARGIN_VERTICAL
				end
			end

			return {
				relative = "editor",
				anchor = "NE",
				width = state.message.width,
				height = state.message.height,
				col = vim.opt.columns:get(),
				row = next_row,
				border = "rounded",
				style = "minimal",
			}
		end,
		function(state, win)
			local next_row = stages_util.slot_after_previous(win, state.open_windows, direction)
			local is_first_window = state.open_windows == 0
			next_row = next_row - MARGIN_VERTICAL
			if is_first_window then
				if direction == stages_util.DIRECTION.TOP_DOWN then
					next_row = next_row + MARGIN_VERTICAL
				elseif direction == stages_util.DIRECTION.BOTTOM_UP then
					next_row = next_row - MARGIN_VERTICAL
				end
			end
			return {
				col = vim.opt.columns:get() - 1,
				time = true,
				row = next_row,
			}
		end,
	}
end

require("notify").setup({
	on_open = function(win)
		local config = vim.api.nvim_win_get_config(win)
		config.border = { " " }
		vim.api.nvim_win_set_config(win, config)
	end,
	fps = 30,
	stages = no_anim_with_margins(stages_util.DIRECTION.BOTTOM_UP),
	top_down = false,
	max_width = 150,
})
