local shared_keymaps = function()
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
	vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end

require("mason").setup()

local mason_lspconfig = require("mason-lspconfig")

-- only LSPs here, no linters, formatters, or DAPs
mason_lspconfig.setup({
	ensure_installed = { "lua_ls", "gopls", "cssls", "bashls", "eslint", "graphql", "html", "tsserver", "tailwindcss" },
})
mason_lspconfig.setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({
			on_attach = shared_keymaps(),
		})
	end,
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
	on_attach = function(client, bufnr)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			command = "EslintFixAll",
		})
	end,
})

require("lspconfig").graphql.setup({
	capabilities = capabilities,
})

require("lspconfig").html.setup({
	capabilities = capabilities,
})

require("lspconfig").tsserver.setup({
	-- on_attach = function(client, _)
	-- 	if client.name == "tsserver" then
	-- 		local ns = vim.lsp.diagnostic.get_namespace(client.id)
	-- 		vim.diagnostic.disable(nil, ns)
	-- 	end
	-- end,
	capabilities = capabilities,
})

require("lspconfig").tailwindcss.setup({
	capabilities = capabilities,
})
