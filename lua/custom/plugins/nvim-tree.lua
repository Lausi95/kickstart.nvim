-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'nvim-tree/nvim-tree.lua',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local nvimtree = require 'nvim-tree'

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup {
      view = {
        width = 35,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
      },
      git = {
        ignore = false,
      },
    }

    vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeFindFileToggle<CR>', { desc = 'Toggle file explorer' }) -- toggle file explorer
  end,
}
