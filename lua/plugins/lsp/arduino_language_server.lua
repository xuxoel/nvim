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

lspconfig.arduino_language_server.setup({
  cmd = {
    'arduino_language_server',
    '-cli-config', '~/.arduino15/arduino-cli.yaml',
    '-cli', 'usr/bin/arduino-cli',
    '-clangd', 'usr/bin/clangd',
    '-fqbn', 'arduino:avr:uno'
  },
  filetypes = {
    'arduino',
    'ino'
  },
  capabilities = {lsp_capabilities},
  settings = {
    completions = {
      completeFunctionCalls = true
    }
  },
})



