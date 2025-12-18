
local M = {}

vim.g.format_on_save = true

function M.toggle_format_on_save()
  vim.g.format_on_save = not vim.g.format_on_save
  local status = vim.g.format_on_save and "enabled" or "disabled"
  print("Format on save " .. status)
end

function M.format()
  vim.lsp.buf.format({ async = false })
end

function M.setup_format_on_save(bufnr)
  vim.api.nvim_create_autocmd("BufWritePre", {
    buffer = bufnr,
    callback = function()
      if vim.g.format_on_save then
        vim.lsp.buf.format({ async = false })
      end
    end,
    group = vim.api.nvim_create_augroup("LspFormatting_" .. bufnr, { clear = true }),
  })
end

function M.setup_keymaps(bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', '<leader>f', M.format, opts)
end

function M.setup_commands()
  vim.api.nvim_create_user_command('FormatToggle', M.toggle_format_on_save, {})
  vim.api.nvim_create_user_command('Format', M.format, {})
end

function M.init()
  M.setup_commands()
end

return M
