vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.smartindent = true

vim.opt.textwidth = 100

vim.opt.cc = "+1"

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.showbreak = "↪"
vim.opt.listchars = {
	tab = "  ",
	trail = "¬",
	precedes = "«",
	extends = "»",
	eol = "⏎",
	lead = "·",
	nbsp = "␣"
}
vim.cmd("match ErrorMsg \"\\s\\+$\"")
vim.opt.list = true

local prefix = vim.env.XDG_CONFIG_HOME or vim.fn.expand("~/.config")
vim.opt.undodir = { prefix .. "/nvim/.undo"}
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

