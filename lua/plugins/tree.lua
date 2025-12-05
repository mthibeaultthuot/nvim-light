return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", 
    "MunifTanjim/nui.nvim",        
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      default_component_configs = {
        icon = { folder_empty = "󰜌", folder_closed = "", folder_open = "" },
      },
      window = {
        width = 30,
        mappings = {
          ["<space>"] = "toggle_node",
          ["<cr>"] = "open",
          ["o"] = "open",
          ["s"] = "open_split",
          ["v"] = "open_vsplit",
          ["a"] = "add",
          ["d"] = "delete",
          ["r"] = "rename",
          ["c"] = "copy",
          ["x"] = "cut",
          ["p"] = "paste",
          ["q"] = "close_window",
        },
      },
      filesystem = {
        follow_current_file = true,
        hijack_netrw_behavior = "open_default",
      },
    })

  end,
}
