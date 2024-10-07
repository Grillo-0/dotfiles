vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 8
vim.opt.softtabstop = 8
vim.opt.shiftwidth = 8
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
vim.opt.sidescrolloff = 1
vim.opt.signcolumn = "auto"

vim.opt.statusline = table.concat({
	" %f ",
	"%r%m%h%w%q",
	"%=",
	"%l,%c",
	"%=",
	"%p%% %y ",
})
vim.opt.statuscolumn = "%s%C%{%v:relnum? '%r' : '%#Normal#%=%l'%}%#LineNr#%=│"

vim.opt.exrc = true
vim.opt.secure = true
