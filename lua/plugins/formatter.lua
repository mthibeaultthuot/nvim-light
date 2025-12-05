return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        rust = { "rustfmt" },
        c = { "clang_format" },
        cpp = { "clang_format" },
        python = { "black" },
      },
      format_on_save = true,
    })

    vim.keymap.set({ "n", "v" }, "<leader>f", function()
      require("conform").format()
    end)
  end,
}
