return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require'nvim-treesitter.configs'.setup {
				ensure_installed = {
					"c",
					"cpp",
					"diff",
					"git_config",
					"git_rebase",
					"gitcommit",
					"gitignore",
					"lua",
					"markdown",
					"markdown_inline",
					"python",
					"query",
					"vim",
					"vimdoc",
				},

				ignore_install = {},

				sync_install = false,

				auto_install = false,

				highlight = {
					enable = true,
				},
			}
		end
	}
}
