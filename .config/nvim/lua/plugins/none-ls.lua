return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier.with({
                    command = "prettier", -- fall back to system if not found in node_modules
                    filetypes = {
                        "html",
                        "css",
                        "javascript",
                        "typescript",
                        "javascriptreact",
                        "typescriptreact",
                        "json",
                    },
                    extra_filetypes = {
                        "yaml",
                        "toml",
                        "markdown",
                    },
                }),
                null_ls.builtins.formatting.black,
            },
        })

        vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format buffer" })
    end,
}
