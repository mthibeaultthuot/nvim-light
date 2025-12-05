return {
  "kdheepak/monochrome.nvim",
  config = function()
    vim.cmd([[colorscheme monochrome]])

    vim.o.background = "dark"
    vim.cmd("hi Normal guibg=#000000 guifg=#FFFFFF")
    vim.cmd("hi NormalNC guibg=#000000 guifg=#888888")
    vim.cmd("hi EndOfBuffer guibg=#000000 guifg=#000000")
  end,
}
