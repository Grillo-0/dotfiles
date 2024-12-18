return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = {
			'nvim-lua/plenary.nvim',
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
		},
		config = function()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<space>ff', builtin.find_files, { desc = 'Telescope find files' })
			vim.keymap.set('n', '<space>fg', builtin.live_grep, { desc = 'Telescope live grep' })
			vim.keymap.set('n', '<space>fb', builtin.buffers, { desc = 'Telescope find buffers' })
			vim.keymap.set('n', '<space>fs', builtin.lsp_dynamic_workspace_symbols,
						   { desc = 'Telescope find lsp symbols' })
			vim.keymap.set('n', '<space>fn', function()
				builtin.find_files {
					cwd = vim.fn.stdpath("config")
				}
			end
			, { desc = 'Telescope find config files' })
		end
	}
}
