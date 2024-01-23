local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("ellisonleao/gruvbox.nvim")
	use("nvim-tree/nvim-tree.lua")
	use("nvim-tree/nvim-web-devicons")
	use("nvim-lualine/lualine.nvim")
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("vim-test/vim-test")
	-- comment/uncomment multiple lines
	use("tpope/vim-commentary")
	use("tpope/vim-fugitive")
	use("tpope/vim-surround")

	-- open line in github
	use("ruanyl/vim-gh-line")

	-- github copilot
	use("github/copilot.vim")

	-- autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- lsp
	use({
		-- mason + nvim-lspconfig + mason-lspconfig all work together
		-- mason provides repo and gui to install LSPs, formatters, linters, etc.
		"williamboman/mason.nvim",
		run = ":MasonUpdate",
		-- mason-lspconfig uses Mason to ensure installation of LSPs and will tell nvim-lspconfig what command to use to launch those LSPs
		"williamboman/mason-lspconfig.nvim",
		-- nvim-lspconfig provides very basic configs for LSP servers
		"neovim/nvim-lspconfig",
		"jose-elias-alvarez/null-ls.nvim",
		"jay-babu/mason-null-ls.nvim",
	})

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- suggest mappings
	use("folke/which-key.nvim")

	-- display hex colors
	use("norcalli/nvim-colorizer.lua")

	use({ "sindrets/diffview.nvim", requires = { "nvim-lua/plenary.nvim" } })

	-- autoclosing tags <>
	use("alvan/vim-closetag")

	use("jiangmiao/auto-pairs")

	-- optional for telescope
	use("sharkdp/fd")

	use("mbbill/undotree")

	use("mg979/vim-visual-multi")

	-- easily navigate between vim and tmux panes
	use("christoomey/vim-tmux-navigator")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
