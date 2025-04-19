-- * General settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.swapfile = false

-- * UI tweaks
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.wrap = false

-- * Tabs and indents
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

-- * Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- * Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = true
vim.opt.foldlevelstart = 99 -- Starts with all folds opened
