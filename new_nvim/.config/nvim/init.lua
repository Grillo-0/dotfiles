require("config.lazy")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = "unnamedplus"

vim.opt.textwidth = 100
vim.opt.colorcolumn = "+1"

vim.opt.wrap = false

vim.keymap.set("n", "<space><space>x", ":%lua<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

vim.opt.list = true
vim.opt.listchars = {
	lead = '·',
	space = ' ',
	tab = '  ',
	trail = '▫',
}

vim.api.nvim_set_hl(0, 'TrailingSpaces', { bg = 'red'})

vim.opt.hlsearch = false
