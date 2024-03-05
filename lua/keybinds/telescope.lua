local assign = vim.keymap.set

-- See `:help telescope.builtin`
local builtin = require 'telescope.builtin'
assign('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
assign('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
assign('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
assign('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
assign('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
assign('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
assign('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
assign('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
assign('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
assign('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

-- Slightly advanced example of overriding default behavior and theme
assign('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

-- Also possible to pass additional configuration options.
--  See `:help telescope.builtin.live_grep()` for information about particular keys
assign('n', '<leader>s/', function()
  builtin.live_grep {
    grep_open_files = true,
    prompt_title = 'Live Grep in Open Files',
  }
end, { desc = '[S]earch [/] in Open Files' })

-- Shortcut for searching your neovim configuration files
assign('n', '<leader>sn', function()
  builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim files' })
