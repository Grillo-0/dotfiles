return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
			parser_config.jjdescription = {
				install_info = {
					url = "https://github.com/kareigu/tree-sitter-jjdescription",
					files = { "src/parser.c" },
					branch = "dev",
				},
				filetype = "jj",
			}
			vim.treesitter.language.register('jjdescription', 'jj')

			require'nvim-treesitter.configs'.setup {
				ensure_installed = {
					"c",
					"cpp",
					"diff",
					"git_config",
					"git_rebase",
					"gitcommit",
					"gitignore",
					"jjdescription",
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
