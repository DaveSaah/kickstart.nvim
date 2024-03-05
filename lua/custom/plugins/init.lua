return {
  -- wakatime
  {
    'wakatime/vim-wakatime',
    lazy = false,
  },

  require 'custom.plugins.catppuccin',

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

  -- rust toolkit
  {
    'mrcjkb/rustaceanvim',
    version = '^3', -- Recommended
    ft = { 'rust' },
    event = 'VeryLazy',
  },

  -- context
  {
    'nvim-treesitter/nvim-treesitter-context',
    event = 'VeryLazy',
  },

  -- vim latex live preview
  {
    'xuhdev/vim-latex-live-preview',
    event = 'VeryLazy',
    ft = { 'tex' },
  },

  -- ASM LSP
  {
    'bergercookie/asm-lsp',
    event = { 'VeryLazy' },
    ft = { 'asm' },
    filetypes = { 'asm', 's', 'S' },
  },
}
