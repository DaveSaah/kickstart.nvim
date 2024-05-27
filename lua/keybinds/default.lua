local assign = vim.keymap.set
local run = vim.cmd

assign('n', '<Esc>', '<cmd>nohlsearch<CR>')
assign('n', '<C-s>', '<cmd>:w<CR>')
assign('v', '<C-s>', '<ESC><cmd>:w<CR>')
assign('i', '<C-s>', '<ESC><cmd>:w<CR>')

assign('n', '[c', function()
  require('treesitter-context').go_to_context()
end, { silent = true })

assign('n', '<F5>', function()
  run 'UndotreeToggle'
  run 'UndotreeFocus'
end, { silent = true })

-- Diagnostic keymaps
assign('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
assign('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
assign('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
assign('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- TIP: Disable arrow keys in normal mode
assign('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
assign('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
assign('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
assign('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
assign('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
assign('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
assign('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
assign('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

assign('n', '<leader>bd', '<cmd>bdelete<CR>', { desc = 'Delete current buffer' })
