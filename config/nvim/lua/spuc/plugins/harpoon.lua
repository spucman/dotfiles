return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers").new({}, {
				prompt_title = "Harpoon",
				finder = require("telescope.finders").new_table({
					results = file_paths,
				}),
				previewer = conf.file_previewer({}),
				sorter = conf.generic_sorter({}),
			}):find()
		end

		vim.keymap.set("n", "<leader>hm", function() harpoon:list():append() end)
		-- using telescope window instead of the harpoon ui
		vim.keymap.set("n", "<leader>ha", function() toggle_telescope(harpoon:list()) end)
        -- vim.keymap.set("n", "<leader>ha", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
		vim.keymap.set("n", "<leader>hn", function() harpoon.ui:nav_next() end)
		vim.keymap.set("n", "<leader>hp", function() harpoon.ui:nav_prev() end)

		vim.keymap.set("n", "h1", function() harpoon:list():select(1) end)
		vim.keymap.set("n", "h2", function() harpoon:list():select(2) end)
		vim.keymap.set("n", "h3", function() harpoon:list():select(3) end)
		vim.keymap.set("n", "h4", function() harpoon:list():select(4) end)
		vim.keymap.set("n", "h5", function() harpoon:list():select(5) end)
	end,
}
