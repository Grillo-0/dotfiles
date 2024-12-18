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
			require'lspconfig'.lua_ls.setup { capabilities = capabilities }
			require'lspconfig'.ccls.setup {
				init_options = {
					cache = {
						directory = ".ccls-cache";
					};
				}
			}
		end
	}
}
