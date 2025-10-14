return {
	"folke/snacks.nvim",
	opts = {
		dashboard = {
			enabled = true,
			preset = {
				header = [[
 ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓ 
 ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒ 
▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░ 
▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██  
▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒ 
░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░ 
░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░ 
   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░    
         ░    ░  ░    ░ ░        ░   ░         ░    
                                ░                   
					]],
				keys = {
					{ icon = " ", key = "f", desc = "Find File", action = "<leader>ff" },
					{ icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
					{
						icon = " ",
						key = "r",
						desc = "Recent Files",
						action = "<leader>fr",
					},
					{ icon = " ", key = "s", desc = "Restore Session", action = "<leader>gs" },
					{
						icon = "󰒲 ",
						key = "L",
						desc = "Lazy",
						action = ":Lazy",
						enabled = package.loaded.lazy ~= nil,
					},
					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
				},
			},
			formats = {
				key = function(item)
					return { { "[", hl = "special" }, { item.key, hl = "key" }, { "]", hl = "special" } }
				end,
			},
			sections = {
				{ section = "header" },
				{ title = ":: Actions", padding = 1 },
				{ section = "keys", gap = 1, padding = 1, indent = 2 },
				{ title = ":: Sessions", padding = 1 },
				{ section = "projects", padding = 2, indent = 2 },
				{ section = "startup" },
			},
		},
	},
}
