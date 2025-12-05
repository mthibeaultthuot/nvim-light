local map = vim.keymap.set

map("n", "<C-n>", "<cmd>Neotree toggle<CR>", { noremap = true, silent = true })
map("n", "<leader>e", "<cmd>Neotree toggle<CR>", { noremap = true, silent = true })

map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to window below" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to window above" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>")

map("n", "gd", vim.lsp.buf.definition)
map("n", "K", vim.lsp.buf.hover)
map("n", "<leader>rn", vim.lsp.buf.rename)

map("n", "<leader>f", function()
  require("conform").format()
end)
