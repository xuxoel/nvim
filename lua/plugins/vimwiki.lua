local Plugin = {'vimwiki/vimwiki'}

Plugin.lazy = false

function Plugin.init()
  vim.g.vimwiki_list = {
    {
    path = '~/.local/share/nvim/vimwiki',
    syntax = 'markdown',
    ext = '.md',
    },
  }
end

function Plugin.config()
  vim.keymap.set('n', '<leader>wk', '<Plug>VimwikiPrevLink', {})
  vim.keymap.set('n', '<leader>wj', '<Plug>VimwikiNextLink', {})
end

return Plugin
