vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	underline = false,
	update_in_insert = true,
	float = {
		header = false,
		border = "rounded",
		focusable = true,
	},
})

local icons = {
	["Error"] = "",
	["Warn"] = "",
	["Info"] = "󰋼",
	["Hint"] = "󰞋",
}

for _, diag in ipairs({ "Error", "Warn", "Info", "Hint" }) do
	vim.fn.sign_define("DiagnosticSign" .. diag, {
		text = icons[diag],
		texthl = "DiagnosticSign" .. diag,
		linehl = "",
		numhl = "DiagnosticSign" .. diag,
	})
end

-- require("tiny-inline-diagnostic").setup({
-- 	signs = {
-- 		left = "",
-- 		right = "",
-- 		diag = "●",
-- 		arrow = " ",
-- 		up_arrow = "    ",
-- 		vertical = " │",
-- 		vertical_end = " └",
-- 	},
-- 	options = {
-- 		show_source = true,
-- 	},
-- })
