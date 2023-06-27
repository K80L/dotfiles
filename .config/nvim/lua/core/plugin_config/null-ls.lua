local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

require("mason-null-ls").setup({
  ensure_installed = { "stylua", "prettier", "goimports" },
  automatic_installation = false,
  handlers = {},
})

require("null-ls").setup({
  sources = {},
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
