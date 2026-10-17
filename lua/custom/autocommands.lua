-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

if vim.env.KITTY_SCROLLBACK_NVIM == 'true' then
  vim.api.nvim_create_autocmd({ 'FileType' }, {
    group = vim.api.nvim_create_augroup('KittyScrollbackNvimFileType', { clear = true }),
    pattern = { 'kitty-scrollback' },
    callback = function()
      vim.print('kitty-scrollback.nvim is open!')
      return true
    end,
  })
end

