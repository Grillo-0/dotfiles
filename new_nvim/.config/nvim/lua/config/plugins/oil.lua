return {
	{
		"stevearc/oil.nvim",
		config = function()
			require("oil").setup({ })

			vim.keymap.set("n", "<space>n", ":Oil<CR>")
		end
	}
}
