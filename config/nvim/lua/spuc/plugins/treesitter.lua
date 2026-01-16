return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
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
			},
			auto_install = false,
			highlight = { enable = true },
		})
	end,
}
