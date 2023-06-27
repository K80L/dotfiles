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

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

require("mason-null-ls").setup({
	ensure_installed = { "stylua", "prettier", "goimports" },
	automatic_installation = true,
	handlers = {},
})

require("null-ls").setup({
	sources = {}, -- don't need b/c we're using mason-null-ls to install the sources
	-- you can reuse a shared lspconfig on_attach callback here
	on_attach = function(client, bufnr)
		local callback = function()
			vim.lsp.buf.format({
				bufnr = bufnr,
				filter = function()
					return client.name == "null-ls"
				end,
			})
		end

		-- format on save
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = callback,
			})
		end
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
