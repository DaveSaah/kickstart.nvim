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

  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = 'zathura'
    end,
  },
}
