return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, { desc = "Show hover information" })
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Show LSP code actions"})
    end
}
