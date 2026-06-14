return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = {
      contrast = "hard", -- Enables the Dark Hard variant
      transparent_mode = true, -- Strips the main editor background
      overrides = {
        -- Strip the base Neovim statusline background so Lualine's "NONE" actually shows your wallpaper
        StatusLine = { bg = "NONE" },
        StatusLineNC = { bg = "NONE" },

        -- -- Make standard text your custom off-white
        -- Normal = { fg = "#e8e3df" },
        --
        -- -- Force Explorer directory and file names to be off-white
        -- SnacksExplorerDir = { fg = "#e8e3df" },
        -- SnacksExplorerFile = { fg = "#e8e3df" },
        --
        -- -- Backgrounds and text for Explorer and Terminal
        -- SnacksExplorerNormal = { bg = "#181616", fg = "#e8e3df" },
        -- SnacksTerminalNormal = { bg = "#181616", fg = "#e8e3df" },
        -- TermNormal = { bg = "#181616", fg = "#e8e3df" },
        -- TermNormalNC = { bg = "#181616", fg = "#e8e3df" },
        -- NeoTreeNormal = { bg = "#181616", fg = "#e8e3df" },
        -- NeoTreeNormalNC = { bg = "#181616", fg = "#e8e3df" },
        --
        -- -- Floating windows match the hex background
        -- NormalFloat = { bg = "#181616" },
        -- FloatBorder = { bg = "#181616", fg = "#504945" }, -- Gruvbox grey border
        -- LazyNormal = { bg = "#181616" },
        -- MasonNormal = { bg = "#181616" },
        --
        -- -- Active bracket line uses Gruvbox Red
        SnacksIndentScope = { fg = "#cc241d" },
        IblScope = { fg = "#cc241d" },
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local custom_lualine = require("lualine.themes.gruvbox")

      local transparent_bg = "NONE"
      local soft_text = "#958b71"

      -- Dark text for inside the actual mode blocks (Normal, Insert, etc) so it contrasts nicely
      local block_text = "#181616"

      -- Classic Gruvbox Hex Palette for the modes
      local color_normal = "#cc241d" -- Gruvbox Red
      local color_insert = "#458588" -- Gruvbox Blue
      local color_visual = "#689d6a" -- Gruvbox Aqua
      local color_command = "#b16286" -- Gruvbox Purple

      custom_lualine.normal.a = { bg = color_normal, fg = block_text, gui = "bold" }
      custom_lualine.normal.b = { bg = transparent_bg, fg = soft_text }
      custom_lualine.normal.c = { bg = transparent_bg, fg = soft_text }

      custom_lualine.insert.a = { bg = color_insert, fg = block_text, gui = "bold" }
      custom_lualine.insert.b = { bg = transparent_bg, fg = soft_text }
      custom_lualine.insert.c = { bg = transparent_bg, fg = soft_text }

      custom_lualine.visual.a = { bg = color_visual, fg = block_text, gui = "bold" }
      custom_lualine.visual.b = { bg = transparent_bg, fg = soft_text }
      custom_lualine.visual.c = { bg = transparent_bg, fg = soft_text }

      custom_lualine.command.a = { bg = color_command, fg = block_text, gui = "bold" }
      custom_lualine.command.b = { bg = transparent_bg, fg = soft_text }
      custom_lualine.command.c = { bg = transparent_bg, fg = soft_text }

      custom_lualine.inactive.a = { bg = transparent_bg, fg = soft_text }
      custom_lualine.inactive.b = { bg = transparent_bg, fg = soft_text }
      custom_lualine.inactive.c = { bg = transparent_bg, fg = soft_text }

      opts.options = opts.options or {}
      opts.options.theme = custom_lualine
    end,
  },
}
