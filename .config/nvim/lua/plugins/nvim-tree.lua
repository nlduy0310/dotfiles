
local function on_nvim_tree_attach(bufnr)

    local api = require("nvim-tree.api")
    local view = require("nvim-tree.view")
    -- Uncomment the line below to apply default keybindings
    -- api.config.mappings.default_on_attach(bufnr) 

    local function opts(desc)

        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    local function map(key, func, desc)
        vim.keymap.set("n", key, func, opts(desc))
    end

    -- Custom mappings
    map("J", api.node.navigate.sibling.last, "Last sibling")
    map("K", api.node.navigate.sibling.first, "First sibling")
    map("<CR>", api.node.open.edit, "Open")
    map("i", api.node.show_info_popup, "Info popup")
    map("a", api.fs.create, "Create")
    map("r", api.fs.rename, "Rename")
    map("d", api.fs.remove, "Delete")
    map("c", api.fs.copy.node, "Copy")
    map("x", api.fs.cut, "Cut")
    map("p", api.fs.paste, "Paste")
    map("-", api.node.navigate.parent, "Parent")
    -- map("S", api.tree.search_node, "Search") -- This doesn't work properly
end

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()

    require("nvim-tree").setup{
        renderer = {
            icons = {
                show = {
                    folder_arrow = false
                }
            },
            indent_markers = {
                enable = true
            }
        },
        on_attach = on_nvim_tree_attach,
        actions = {
            open_file = {
                quit_on_open = true
            }
        }
    }

    local api = require("nvim-tree.api")
    local view = require("nvim-tree.view")

    local function smart_toggle()

        if view.is_visible() then
            if vim.bo.filetype == "NvimTree" then
                api.tree.toggle()
            else
                api.tree.focus()
            end
        else
            api.tree.toggle()
        end
    end

    vim.keymap.set("n", "<C-A-b>", smart_toggle, { desc = "Smart toggle/focus nvim-tree" })
    -- Disable netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
}
