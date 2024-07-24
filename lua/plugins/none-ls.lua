return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Lua setup
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.selene,

				-- Go setup
				null_ls.builtins.code_actions.gomodifytags,
				null_ls.builtins.diagnostics.golangci_lint,
				null_ls.builtins.formatting.goimports,

				-- Python setup
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.usort,
				null_ls.builtins.diagnostics.mypy,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
