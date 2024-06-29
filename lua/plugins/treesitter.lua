local Plugin = {'nvim-treesitter/nvim-treesitter'}

Plugin.dependencies = {
  {'nvim-treesitter/nvim-treesitter-textobjects'}
}

-- See :help nvim-treesitter-modules
Plugin.opts = {
  highlight = {
    enable = true,
	additional_vim_regex_highlighting = false,
  },
  -- :help nvim-treesitter-textobjects-modules
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      }
    },
  },
  indent = {
	enable = true
  },
  rainbox = {
	enable = true,
	extended_mode = true,
	max_file_lines = nil,
  },
  ensure_installed = {
    'bash',
    'c',
    'javascript',
    'typescript',
	'markdown',
    'rust',
    'lua',
    'vim',
    'vimdoc',
    'css',
    'json'
  },
}

function Plugin.config(name, opts)
  require('nvim-treesitter.configs').setup(opts)
end

return Plugin
