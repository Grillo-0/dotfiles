return {
	{
		'tummetott/unimpaired.nvim',
		event = 'VeryLazy',
		config= function()
			require('unimpaired').setup {
				default_keymaps = true,
			}
		end
	}
}
