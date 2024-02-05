local lsp = require('lsp-zero')

lsp.preset('recommended')

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	["<C-Space>"] = cmp.mapping.complete(),
})lsp.nvim_workspace()

-- disable completion with tab
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil
-- disable completion with enter
cmp_mappings['<CR>'] = nil

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.set_preferences({
	suggest_lsp_servers = true,
})

lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "<leader>rr", vim.lsp.buf.references, opts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

lsp.setup()

vim.diagnostic.disable()
