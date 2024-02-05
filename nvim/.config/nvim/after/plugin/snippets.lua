local ls = require("luasnip")

ls.add_snippets(nil, {
	all = {
		ls.snippet({
			trig = "reviewed",
			namr = "Reviewed-by",
			dscr = "Reviewed-by tag"
		}, {
			ls.text_node("Reviewed-by: Arthur Grillo <arthurgrillo@riseup.net>", {}),
		}),
		ls.snippet({
			trig = "best",
			namr = "Best Regards",
			dscr = "Best Regards email ending"
		}, {
			ls.text_node({"Best Regards,","~Arthur Grillo"}, {}),
		}),
	},
})
