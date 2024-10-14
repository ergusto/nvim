return {
	{
		"harpoon-lists",
		dir = "~/personal/harpoon-lists", -- Path to your local plugin directory
		dev = true,
		dependencies = {
			{
				"ThePrimeagen/harpoon",
				lazy = false,
				priority = 1000,
			},
			"nvim-lua/plenary.nvim", -- Plenary for various utilities
			"nvim-telescope/telescope.nvim", -- Telescope for input handling
		},
		config = function()
			local lists = require("harpoon-lists")

			lists.setup({
				keymaps = {
					create_list = "<leader>lc", -- Custom keymap for creating a new list
					switch_list = "<leader>ls", -- Custom keymap for switching lists
					add_file = "<leader>la", -- Custom keymap for adding files to the current list
					toggle_menu = "<leader>lm", -- Custom keymap for toggling the menu
				},
			})
		end,
	},
}
