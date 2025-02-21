return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"Saghen/blink.cmp",
			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						-- See the configuration section for more details
						-- Load luvit types when the `vim.uv` word is found
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
		config = function()
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = args.buf })
					vim.keymap.set("n", "crn", vim.lsp.buf.rename, { buffer = args.buf })
					vim.keymap.set("n", "crr", vim.lsp.buf.code_action, { buffer = args.buf })
				end,
			})

			local capabilities = require('blink.cmp').get_lsp_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup { capabilities = capabilities }
			lspconfig.ccls.setup {
				capabilities = capabilities,
				init_options = {
					compilationDatabaseDirectory = "build";
					cache = {
						directory = "/tmp/ccls-cache";
					};
				}
			}
			lspconfig.rust_analyzer.setup { capabilities = capabilities }
			lspconfig.textlsp.setup { capabilities = capabilities }
			lspconfig.pyright.setup { capabilities = capabilities }
			lspconfig.pyright.setup {
				root_dir = function(fname)
					return lspconfig.util.root_pattern(
						'pyproject.toml',
						'setup.py',
						'setup.cfg',
						'Pipfile',
						'pyrightconfig.json',
						'.git'
					)(fname)
				end,
			}
		end
	}
}
