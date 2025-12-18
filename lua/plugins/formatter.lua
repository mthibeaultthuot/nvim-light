return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        rust = { "rustfmt" },
        c = { "clang_format" },
        cpp = { "clang_format" },
        python = { "black" },
        zig = { 'zigfmt' },
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        javascriptreact = { 'prettier' },
        typescriptreact = { 'prettier' },
      },
      format_on_save = true,
    })

    vim.keymap.set({ "n", "v" }, "<leader>f", function()
      require("conform").format()
    end)
  end,
}
