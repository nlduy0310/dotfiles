-- * Basic keymaps
vim.g.mapleader = " "
vim.keymap.set("n", "<S-Esc>", ":nohlsearch<CR>")

-- * bufferline
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bp", ":BufferLinePick<CR>", { desc = "Pick buffer" })
vim.keymap.set("n", "<leader>bco", ":BufferLineCloseOthers<CR>", { desc = "Close other buffers"})

-- * buffer
vim.keymap.set("n", "<leader>qq", ":bd<CR>", { desc = "Close current buffer"})
vim.keymap.set("n", "<leader>qa", ":bufdo bd<CR>", { desc = "Close all buffers" })
