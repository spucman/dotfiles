return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").install({
				"go",
				"lua",
				"rust",
				"tsx",
				"javascript",
				"typescript",
				"vimdoc",
				"vim",
				"bash",
				"kotlin",
				"html",
				"markdown",
				"css",
				"toml",
				"yaml",
				"csv",
				"json",
				"python",
				"sql",
			})
		end,
	},
}
