return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,  -- Load immediately
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",               
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { "italic" }, -- Change the style of comments
          conditionals = {},
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        integrations = {
            nvimtree = true,
            telescope = {
                enabled = true
            }
        },
      })
      vim.cmd.colorscheme("catppuccin-mocha")  -- Apply the theme
    end,
  },
}

