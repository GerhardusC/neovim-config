-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  -- version = '*',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>fe', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  -- If this is disabled, neotree won't be loaded on startup, so you will see default file tree
  lazy = true,
  opts = {
    filesystem = {
      window = {
        -- Set if needed.
        -- width = 20,
        mappings = {
          ['<leader>fe'] = 'close_window',
        },
      },
    },
  },
}
