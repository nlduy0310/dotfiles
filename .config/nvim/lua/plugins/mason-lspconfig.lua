return {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "html",
                "cssls",
                "ts_ls",
                "gopls",
                "pylsp",
            },
        })

        -- Setup each LSP automatically
        require("mason-lspconfig").setup_handlers({
            -- Specific configurations
            -- ["gopls"] = function()
            --     require("lspconfig").gopls.setup({})
            -- end,
            -- Default for other servers
            function(server_name)
                require("lspconfig")[server_name].setup({})
            end,
        })
    end,
}
