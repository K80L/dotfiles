require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "gopls", "cssls", "bashls", "eslint", "graphql", "html", "tsserver", "tailwindcss" },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").lua_ls.setup({
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

require("lspconfig").gopls.setup({
	capabilities = capabilities,
})

require("lspconfig").cssls.setup({
	capabilities = capabilities,
})

require("lspconfig").bashls.setup({
	capabilities = capabilities,
})

require("lspconfig").eslint.setup({
	capabilities = capabilities,
})

require("lspconfig").graphql.setup({
	capabilities = capabilities,
})

require("lspconfig").html.setup({
	capabilities = capabilities,
})

require("lspconfig").tsserver.setup({
	on_attach = function(client, _)
		if client.name == "tsserver" then
			local ns = vim.lsp.diagnostic.get_namespace(client.id)
			vim.diagnostic.disable(nil, ns)
		end
	end,
	capabilities = capabilities,
})

require("lspconfig").tailwindcss.setup({
	capabilities = capabilities,
})
