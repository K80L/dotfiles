local cmd = vim.cmd

vim.o.termguicolors = true
vim.cmd [[ colorscheme gruvbox ]]

-- transparancy
cmd 'hi Normal guibg=NONE ctermbg=NONE'
cmd 'hi LineNr guibg=NONE ctermbg=NONE'
cmd 'hi SignColumn guibg=NONE ctermbg=NONE'
cmd 'hi EndOfBuffer guibg=NONE ctermbg=NONE'
