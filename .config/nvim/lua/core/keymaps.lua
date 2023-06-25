-- default settings
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.hidden = true
vim.opt.syntax = 'on'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.runtimepath = vim.o.runtimepath .. ',/usr/share/nvim/runtime,/usr/share/nvim/runtime/after'
vim.opt.filetype = 'on'
vim.opt.filetype.plugin = 'on'
vim.opt.filetype.indent = 'on'
vim.opt.omnifunc = 'syntaxcomplete#Complete'
vim.opt_local.omnifunc = 'go#complete#Complete'
vim.opt.completeopt = 'longest,menuone'
vim.opt.expandtab = true
vim.opt.scrolloff = 8
vim.opt.encoding = 'utf-8'

-- use spaces for tabs and shit
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':noh<CR>')

-- remove w key from split navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

vim.keymap.set('n', '<silent> <A-Left>', ':vertical resize -3<CR>')
vim.keymap.set('n', '<silent> <A-Right>', ':vertical resize +3<CR>')
vim.keymap.set('n', '<silent> <A-Up>', ':resize +3<CR>')
vim.keymap.set('n', '<silent> <A-Down>', ':resize -3<CR>')


