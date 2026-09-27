-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>doc', '<cmd>Neogen<CR>')
-- Change tabs
vim.keymap.set('n', '<S-l>', '<cmd>bnext<CR>')
vim.keymap.set('n', '<S-h>', '<cmd>bprev<CR>')
vim.keymap.set('n', '<leader>le', '<cmd>set fileformat=unix<CR>', { desc = 'Set line endings to UNIX format' })
vim.keymap.set('n', '<leader>pv', '<cmd>MarkdownPreviewToggle<CR>')
-- toggle line wrap
vim.keymap.set('n', '<leader>ww', '<cmd>set wrap!<CR>')
-- close buffer
vim.keymap.set('n', '<leader>x', '<cmd>bdelete<CR>')
-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- Next error
vim.keymap.set('n', '<leader>en', '<cmd>lnext<CR>')
-- Prev error
vim.keymap.set('n', '<leader>ep', '<cmd>lprev<CR>')
