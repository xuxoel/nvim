vim.api.nvim_create_autocmd('filetype',{
  pattern = 'netrw',
  desc = 'Better mappings for netrw',
  callback = function()
    local bind = function(lhs,rhs)
      vim.keymap.set('n', lhs, rhs, { remap = true, buffer = true })
    end
    bind('h', 'u')
    bind('l', '<cr>')
  end
})

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('jcm-highlight-yank', { clear = true }),
  callback = function ()
    vim.highlight.on_yank()
  end,
})
