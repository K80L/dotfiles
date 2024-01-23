-- default settings
vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.hidden = true
vim.opt.syntax = "on"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.runtimepath = vim.o.runtimepath .. ",/usr/share/nvim/runtime,/usr/share/nvim/runtime/after"
vim.opt.filetype = "on"
vim.opt.filetype.plugin = "on"
vim.opt.filetype.indent = "on"
vim.opt.omnifunc = "syntaxcomplete#Complete"
vim.opt_local.omnifunc = "go#complete#Complete"
vim.opt.completeopt = "longest,menuone"
vim.opt.expandtab = true
vim.opt.scrolloff = 8
vim.opt.encoding = "utf-8"

-- use spaces for tabs and shit
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- splitting behavior
vim.opt.splitbelow = true
vim.opt.splitright = true

-- blinking cursor
vim.opt.guicursor =
	[[n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175]]

vim.opt.incsearch = true

vim.o.termguicolors = true

vim.opt.updatetime = 50

---- remaps ----
-- clear highlight
vim.keymap.set("n", "<leader>n", ":noh<CR>")

-- remove w key from split navigation
-- vim.keymap.set("n", "<C-h>", "<C-w>h")
-- vim.keymap.set("n", "<C-j>", "<C-w>j")
-- vim.keymap.set("n", "<C-k>", "<C-w>k")
-- vim.keymap.set("n", "<C-l>", "<C-w>l")

-- resizing splits
vim.keymap.set("n", "<A-Up>", ":resize +2<CR>", { silent = true })
vim.keymap.set("n", "<A-Down>", ":resize -2<CR>", { silent = true })
vim.keymap.set("n", "<A-Left>", ":vertical resize -2<CR>", { silent = true })
vim.keymap.set("n", "<A-Right>", ":vertical resize +2<CR>", { silent = true })

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gl", vim.diagnostic.open_float, {})

vim.keymap.set("v", "<leader>l", "yoconsole.log('<ESC>pa: ', <ESC>pa)", { silent = true })
