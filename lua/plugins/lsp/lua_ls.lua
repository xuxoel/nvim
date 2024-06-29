-- Enabling servers:
-- We can override configurations in the following tables. Available keys are:
--  cmd (table): Override the default command used to start the server
--  filetypes (table): Override the default list of associated filetypes for the server
--  capabilities (table): Override fields in capabilities. Can be used to disable certain LSP features
--  settings (table): Override the default settings passed when initializing the server

local lspconfig = require ('lspconfig')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

lspconfig.lua_ls.setup({
  -- cmd = {...},
  -- filetypes = {},
  capabilities = {lsp_capabilities},
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      workspace = {
        checkThirdParty = false,
        -- Tells lua_ls where to find all the Lua files that you have loaded
        -- for your neovim configuration
        library = {
          '${3rd}/luv/library',
          unpack(vim.api.nvim_get_runtime_file('', true)),
        },
        -- If lua_ls is really slow on your computer, yo can try this instead
        -- library =j { vim.env. VIMRUNTIME },
      },
      completion = {
        callSnippet = 'Replace',
      },
      -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
      -- diagnostics = { disable = { 'missing-fields' } },
    },
  },
})



