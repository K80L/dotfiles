local cmd = vim.cmd

vim.cmd([[ colorscheme gruvbox ]])

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- transparancy
-- cmd 'hi Normal guibg=NONE ctermbg=NONE'
-- cmd 'hi LineNr guibg=NONE ctermbg=NONE'
-- cmd 'hi SignColumn guibg=NONE ctermbg=NONE'
-- cmd 'hi EndOfBuffer guibg=NONE ctermbg=NONE'
