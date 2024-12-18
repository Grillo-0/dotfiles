return {
	{
		"stevearc/oil.nvim",
		config = function()
			require("oil").setup({ })

			vim.keymap.set("n", "<space>n", ":Oil<CR>")
			vim.api.nvim_create_autocmd("Filetype", {
				pattern = "oil",
				callback = function()
					local oil = require("oil")
					vim.keymap.set("n", "i", oil.toggle_hidden, {buffer=true})
				end
			})
		end
	}
}
