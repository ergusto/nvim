return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"<leader>ha",
			function()
				require("harpoon"):list():add()
			end,
			desc = "harpoon file",
		},
		{
			"<leader>hr",
			function()
				local harpoon = require("harpoon")
				local Path = require("plenary.path")

				local function normalise_path(buf_name, root)
					return Path:new(buf_name):make_relative(root)
				end

				local name = normalise_path(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), vim.fn.getcwd())
				local item = harpoon:list():get_by_value(name)

				harpoon:list():remove(item)
			end,
			desc = "remove file from default list",
		},
		{
			"<leader>hl",
			function()
				local harpoon = require("harpoon")
				harpoon.ui:toggle_quick_menu(harpoon:list())
				local conf = require("telescope.config").values
				local function toggle_telescope(harpoon_files)
					local file_paths = {}
					for _, item in ipairs(harpoon_files.items) do
						table.insert(file_paths, item.value)
					end

					require("telescope.pickers")
						.new({}, {
							prompt_title = "Harpoon",
							finder = require("telescope.finders").new_table({
								results = file_paths,
							}),
							previewer = conf.file_previewer({}),
							sorter = conf.generic_sorter({}),
						})
						:find()
				end
				toggle_telescope(harpoon:list())
			end,
			desc = "Show harpoon list",
		},
	},
}
