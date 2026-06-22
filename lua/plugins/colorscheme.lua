return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = {
      contrast = "hard", -- Enables the Dark Hard variant
      transparent_mode = true, -- Strips the main editor background
      overrides = {
        StatusLine = { bg = "NONE" },
        StatusLineNC = { bg = "NONE" },

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
      local color_normal = "#cc241d" -- Gruvbox red
      local color_insert = "#458588" -- Gruvbox blue
      local color_visual = "#689d6a" -- Gruvbox aqua
      local color_command = "#b16286" -- Gruvbox purple
      local color_terminal = "#a89984" -- Gruvbox gray
      local color_replace = "#d65d0e" -- Gruvbox orange

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

      custom_lualine.terminal = {}
      custom_lualine.terminal.a = { bg = color_terminal, fg = block_text, gui = "bold" }
      custom_lualine.terminal.b = { bg = transparent_bg, fg = soft_text }
      custom_lualine.terminal.c = { bg = transparent_bg, fg = soft_text }

      custom_lualine.replace = {}
      custom_lualine.replace.a = { bg = color_replace, fg = block_text, gui = "bold" }
      custom_lualine.replace.b = { bg = transparent_bg, fg = soft_text }
      custom_lualine.replace.c = { bg = transparent_bg, fg = soft_text }

      opts.options = opts.options or {}
      opts.options.theme = custom_lualine
    end,
  },
}
