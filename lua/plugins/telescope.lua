local Plugin = {'nvim-telescope/telescope.nvim'}

Plugin.event = 'VeryLazy'
Plugin.branch = '0.1.x'

Plugin.dependencies = {
  {'nvim-lua/plenary.nvim'},
  {'nvim-telescope/telescope-fzf-native.nvim',
  -- `build` is used to run some command when the plugin is installled/updated.
  --  It only runs then and not every time Neovim starts up.
  build = 'make',
  -- `cond` is a condition used to determine whether this plugin should be installed and loaded.
  cond = function()
    return vim.fn.executable 'make' == 1
  end,
  },
  {'nvim-tree/nvim-web-devicons'},
  {'sharkdp/fd'},
}

Plugin.cmd = {'Telescope'}

function Plugin.init()
  -- See :help telescope.builtin
  vim.keymap.set('n', '<leader>?', '<cmd>Telescope oldfiles<cr>', {desc = '[?] Find recently opened files'})
  vim.keymap.set('n', '<leader><space>', '<cmd>Telescope buffers<cr>', {desc = '[  ] Find existing buffers'})
  vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {desc = '[F]ind [F]iles'})
  vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', {desc = '[F]ind [H]elp'})
  vim.keymap.set('n', '<leader>fw', '<cmd>Telescope grep_string<cr>', {desc = '[F]ind current [W]ord'})
  vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {desc = '[F]ind by [G]rep'})
  vim.keymap.set('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>', {desc = '[F]ind [D]iagnostics'})
  vim.keymap.set('n', '<leader>fk', '<cmd>Telescope keymaps<cr>', {desc = '[F]ind [K]eymaps'})
  vim.keymap.set('n', '<leader>fs', '<cmd>Telescope current_buffer_fuzzy_find<cr>', {desc = '[  ] Find current buffer'})
end

function Plugin.config()
  require('telescope').load_extension('fzf')
end

return Plugin
