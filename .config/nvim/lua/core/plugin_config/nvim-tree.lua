-- disabling netrw is strongly advised
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.nvim_tree_gitignore = 1

require("nvim-tree").setup({
	actions = {
		open_file = {
			window_picker = {
				enable = false, -- disable the window picker
			},
		},
	},
	filters = {
		dotfiles = true,
	},
})

vim.keymap.set("n", "<c-f>", ":NvimTreeFindFileToggle<CR>")
