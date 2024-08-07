local Plugin = {'nvim-lualine/lualine.nvim'}

Plugin.event = 'VeryLazy'

-- See :help lualine.txt
Plugin.opts = {
  options = {
    theme = 'gruvbox',
    icons_enabled = true,
	component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
	always_divide_middle = true,
	globalstatus = false,
  },
  sections = {
  lualine_a = {'mode'},
  lualine_b = {'branch', 'diff', 'diagnostics'},
  lualine_c = {'filename'},
  --lualine_x = {'encoding', 'fileformat', 'filetype'},
  lualine_x = {arduino_status},
  lualine_y = {'progress'},
  lualine_z = {'location'}
  },
  inactive_sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = {'filename'},
  lualine_x = {'location'},
  lualine_y = {},
  lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

function Plugin.init()
  vim.opt.showmode = false
end

return Plugin
