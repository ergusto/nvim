local function toggle_telescope(paths, title)
	local conf = require("telescope.config").values
	local pickers = require("telescope.pickers")
	local finders = require("telescope.finders")
	local action_state = require("telescope.actions.state")
	local harpoon = require("harpoon")

	pickers
		.new({}, {
			prompt_title = title,
			finder = finders.new_table({
				results = paths,
			}),
			previewer = conf.file_previewer({}),
			sorter = conf.generic_sorter({}),
			attach_mappings = function(_, map)
				map("i", "<c-d>", function()
					local selection = action_state.get_selected_entry()
					local list = harpoon:list()
					list:remove(selection.value)
					print("You deleted from the Harpoon list: " .. list.name)
				end)
				return true
			end,
		})
		:find()
end

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
				local _, index = harpoon:list():get_by_value(name)

				harpoon:list():remove_at(index)
			end,
			desc = "remove file from default list",
		},
		{
			"<leader>hc",
			function()
				local harpoon = require("harpoon")

				vim.ui.input({
					prompt = "Enter a name for this list: ",
				}, function(name)
					if name then
						local list = harpoon:list(name)
						print("You created the Harpoon list: " .. list.name)
					else
						return
					end
				end)
			end,
			desc = "Create a new harpoon list",
		},
		{
			"<leader>hl",
			function()
				local harpoon = require("harpoon")
				local files = harpoon:list()
				harpoon.ui:toggle_quick_menu(files)
				local file_paths = {}
				for _, item in ipairs(files.items) do
					table.insert(file_paths, item.value)
				end
				toggle_telescope(file_paths, "Harpoon list")
			end,
			desc = "Show harpoon list",
		},
		{
			"<leader>hi",
			function()
				local harpoon = require("harpoon")

				toggle_telescope(harpoon.lists, "Harpoon List list")
			end,
			desc = "Show harpoon lists",
		},
	},
}
