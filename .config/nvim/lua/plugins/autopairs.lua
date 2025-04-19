return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",  -- This ensures the plugin is loaded when you enter insert mode
    config = function()

        require("nvim-autopairs").setup({
            check_ts = true,  -- Enable Treesitter integration for better syntax awareness
        })
    end
}

