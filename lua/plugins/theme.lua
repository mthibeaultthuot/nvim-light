return {
  {"kdheepak/monochrome.nvim"},

  { "chriskempson/base16-vim", lazy = true },
  { "savq/melange-nvim", lazy = true }, -- melange of earth tones
  { "rmehri01/onenord.nvim", lazy = true },
  { "mcchrish/zenbones.nvim", lazy = true },

  { 
    'projekt0n/github-nvim-theme',
    name = 'github-theme',
  },

  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
  },
  { "tahayvr/matteblack.nvim", lazy = false, priority = 1000 },
  {
    "ribru17/bamboo.nvim",
    priority = 1000,
  },
  {
    "ribru17/bamboo.nvim",
    priority = 1000,
  },
  { "rebelot/kanagawa.nvim" },
  { "armannikoyan/rusty" },
  { "neanias/everforest-nvim" },
  { "folke/tokyonight.nvim", lazy = true },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      term_colors = true,
      transparent_background = false,
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
      integrations = {
        telescope = {
          enabled = true,
          style = "nvchad",
        },
        dropbar = {
          enabled = true,
          color_mode = true,
        },
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "Mofiqul/vscode.nvim",
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("vscode")
    end,
  },
  { "marko-cerovac/material.nvim" },

  { "ellisonleao/gruvbox.nvim", lazy = true },
  { "rose-pine/neovim", name = "rose-pine", lazy = true },

  -- 🧊 Icy & clean vibes
  { "shaunsingh/nord.nvim", lazy = true },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = true },
  { "ray-x/starry.nvim", lazy = true }, -- starry sky variants

  -- 🌈 Pastel & aesthetic
  { "kvrohit/mellow.nvim", lazy = true }, -- calm dark palette
  { "nyoom-engineering/oxocarbon.nvim", lazy = true }, -- IBM-inspired futuristic
  { "navarasu/onedark.nvim", lazy = true }, -- OneDark classic (different from Pro)
  { "tiagovla/tokyodark.nvim", lazy = true },

  -- 🔥 Spicy & unique
  { "Mofiqul/dracula.nvim", lazy = true },
  { "Tsuzat/NeoSolarized.nvim", lazy = true },
  { "maxmx03/fluoromachine.nvim", lazy = true }, -- cyberpunk highlight colors
  { "ray-x/aurora", lazy = true }, -- glowy aurora borealis feel
  { "ishan9299/nvim-solarized-lua", lazy = true },
  { "NLKNguyen/papercolor-theme", lazy = true },
  { "sainnhe/edge", lazy = true },

  -- 🪄 Clean minimal / light themes
  { "chriskempson/base16-vim", lazy = true },
  { "savq/melange-nvim", lazy = true }, -- melange of earth tones
  { "rmehri01/onenord.nvim", lazy = true },
  { "mcchrish/zenbones.nvim", lazy = true },

  {
    "xiyaowong/transparent.nvim",
    config = function()
      require("transparent").setup({
        groups = { -- table: default groups to clear
          "Normal",
          "NormalNC",
          "Comment",
          "Constant",
          "Special",
          "Identifier",
          "Statement",
          "PreProc",
          "Type",
          "Underlined",
          "Todo",
          "String",
          "Function",
          "Conditional",
          "Repeat",
          "Operator",
          "Structure",
          "LineNr",
          "NonText",
          "SignColumn",
          "CursorLine",
          "CursorLineNr",
          "StatusLine",
          "StatusLineNC",
          "EndOfBuffer",
        },
        extra_groups = { -- for plugins & UI stuff
          "NormalFloat",
          "NvimTreeNormal",
          "TelescopeNormal",
          "TelescopeBorder",
          "NeoTreeNormal",
          "NeoTreeNormalNC",
          "FloatBorder",
          "WhichKeyFloat",
          "Pmenu",
          "PmenuSbar",
        },
        exclude_groups = {}, -- don't touch these
      })
    end,
  },
}
