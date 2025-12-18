local format = require('core.format')

format.init()

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion = nil

local on_attach = function(client, bufnr)
  client.server_capabilities.completionProvider = false
  
  local opts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  
  format.setup_keymaps(bufnr)
  format.setup_format_on_save(bufnr)
end

vim.lsp.config('rust_analyzer', {
  cmd = { 'rust-analyzer' },
  root_markers = { 'Cargo.toml' },
  capabilities = capabilities,
  on_attach = on_attach,
})

vim.lsp.config('zls', {
  cmd = { 'zls' },
  root_markers = { 'build.zig', 'zls.json' },
  capabilities = capabilities,
  on_attach = on_attach,
})

vim.lsp.config('clangd', {
  cmd = { 'clangd' },
  root_markers = { 'compile_commands.json', '.git' },
  capabilities = capabilities,
  on_attach = on_attach,
})

vim.lsp.config('ts_ls', {
  cmd = { 'typescript-language-server', '--stdio' },
  root_markers = { 'package.json', 'tsconfig.json', 'jsconfig.json' },
  capabilities = capabilities,
  on_attach = on_attach,
})

vim.lsp.config('lua_ls', {
  cmd = { 'lua-language-server' },
  root_markers = { '.luarc.json', '.git' },
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      diagnostics = { globals = {'vim'} },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = { enable = false },
    },
  },
})

vim.lsp.enable('rust_analyzer')
vim.lsp.enable('zls')
vim.lsp.enable('clangd')
vim.lsp.enable('ts_ls')
vim.lsp.enable('lua_ls')
