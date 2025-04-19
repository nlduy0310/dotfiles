return {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup{
            ensure_installed = { 
                "lua_ls",
                "html", "cssls",
                "ts_ls",
                "gopls",
                "pylsp"
            }
        }
    end
}
