-- disabling netrw is strongly advised
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.nvim_tree_gitignore = 1

local function on_attach(bufnr)
	local api = require("nvim-tree.api")

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- add your mappings
	vim.keymap.set("n", "<C-t>", function()
		return api.tree.toggle({ focus = false })
	end)

	vim.keymap.set("n", "<C-f>", ":NvimTreeFindFile<CR>")
	---
end

require("nvim-tree").setup({
	on_attach = on_attach,
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
	modified = {
		enable = true,
		show_on_dirs = true,
		show_on_open_dirs = true,
	},
	renderer = {
		icons = {
			show = {
				modified = true,
			},
		},
	},
	update_focused_file = {
		enable = true,
	},
	view = {
		preserve_window_proportions = true,
		width = 40,
	},
})

-- vim.keymap.set("n", "<c-f>", ":NvimTreeFindFile<CR>")
-- vim.keymap.set("n", "<c-t>", ":NvimTreeToggle<CR>")
