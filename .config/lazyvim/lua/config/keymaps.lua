local map = vim.keymap.set
local del = vim.keymap.del
local comment = require("Comment.api")

map("n", "<C-p>", LazyVim.pick("files", { root = false }))
map("n", "<C-M-b>", function()
  Snacks.explorer()
end)
map("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>")
map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>")

map("n", "]<Tab>", "<cmd>BufferLineMoveNext<CR>", { desc = "Move Buffer Right" })
map("n", "[<Tab>", "<cmd>BufferLineMovePrev<CR>", { desc = "Move Buffer Left" })

del("n", "<C-/>")
del("t", "<C-/>")
map("n", "<M-j>", function()
  Snacks.terminal()
end)
map("t", "<M-j>", "<cmd>close<CR>")
del("n", "<C-_>")
map("n", "<C-_>", "<Plug>(comment_toggle_linewise_current)")
map("v", "<C-_>", "<Plug>(comment_toggle_linewise_visual)")
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
