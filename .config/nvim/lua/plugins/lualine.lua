return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require("lualine").setup{
            theme = "catppuccin",
            extensions = {
                {
                    filetypes = { "NvimTree" },
                    sections = {
                        lualine_a = {},
                        lualine_b = {},
                        lualine_c = {},
                        lualine_x = {},
                        lualine_y = {},
                        lualine_z = {},
                    }
                }
            }
        }
    end
}
