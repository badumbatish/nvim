vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true



return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons" 
  },
  config = function ()
 -- END_DEFAULT_ON_ATTACH
 --
    local function my_on_attach(bufnr)
     local api = require("nvim-tree.api")

     local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)
    vim.keymap.set('n', '<C-t>', api.node.open.edit, opts('Open in window'))
    vim.keymap.set('n', '<CR>', api.node.open.tab, opts('Open in new tab'))
end
    require("nvim-tree").setup {
        view = { 
            relativenumber = true,
            number = true
        },
        on_attach = my_on_attach
  }

  end
}
