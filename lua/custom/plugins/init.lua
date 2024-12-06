return {
  -- wakatime
  {
    'wakatime/vim-wakatime',
    lazy = false,
  },

  require 'custom.plugins.catppuccin',
  require 'custom.plugins.lualine',
  require 'custom.plugins.autopairs',
  require 'custom.plugins.neotree',

  -- UNDO tree
  {
    'mbbill/undotree',
    event = 'VeryLazy',
  },

  -- transparency
  {
    'xiyaowong/transparent.nvim',
    event = 'VimEnter',
  },

  -- context
  {
    'nvim-treesitter/nvim-treesitter-context',
    event = 'VeryLazy',
  },
}
