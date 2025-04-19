return {
    'akinsho/bufferline.nvim', 
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup{
            options = {
                mode = "buffers",
                numbers = "none",
                diagnostics = "nvim_lsp",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                    },
                },
                show_buffer_close_icons = false,
                separator_style = "slope"
            }
        }
    end
}
