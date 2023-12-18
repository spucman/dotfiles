return {
	-- git
	'tpope/vim-fugitive',
	-- do i need this?
	'folke/which-key.nvim',
	{
		'rose-pine/neovim',
		name = 'rose-pine',
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme rose-pine]])
		end,
	}
}
