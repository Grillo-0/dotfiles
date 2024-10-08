vim.api.nvim_create_autocmd( {"BufRead", "BufNewFile"}, {
	pattern = {"*.jjdescription"},
	callback = function()
		vim.bo.filetype="gitcommit"
	end
})
