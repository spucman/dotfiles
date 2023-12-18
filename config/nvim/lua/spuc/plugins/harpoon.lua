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

		vim.keymap.set("n", "<leader>hm", function() harpoon:list():append() end)
		vim.keymap.set("n", "<leader>ha", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
		vim.keymap.set("n", "<leader>hn", function() harpoon.ui:nav_next() end)
		vim.keymap.set("n", "<leader>hp", function() harpoon.ui:nav_prev() end)

		vim.keymap.set("n", "h1", function() harpoon:list():select(1) end)
		vim.keymap.set("n", "h2", function() harpoon:list():select(2) end)
		vim.keymap.set("n", "h3", function() harpoon:list():select(3) end)
		vim.keymap.set("n", "h4", function() harpoon:list():select(4) end)
		vim.keymap.set("n", "h5", function() harpoon:list():select(5) end)
	end,
}
