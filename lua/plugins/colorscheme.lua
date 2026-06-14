return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      theme = "dragon",
      background = { dark = "dragon" },
      transparent = true,
      overrides = function(colors)
        local theme = colors.theme
        local p = colors.palette
        local custom_bg = "#181616"
        local off_white = "#e8e3df"

        return {
          -- Make standard text off-white
          Normal = { fg = off_white },

          -- Force Explorer directory and file names to be off-white
          SnacksExplorerDir = { fg = off_white },
          SnacksExplorerFile = { fg = off_white },

          -- Backgrounds and text for Explorer and Terminal
          SnacksExplorerNormal = { bg = custom_bg, fg = off_white },
          SnacksTerminalNormal = { bg = custom_bg, fg = off_white },
          TermNormal = { bg = custom_bg, fg = off_white },
          TermNormalNC = { bg = custom_bg, fg = off_white },
          NeoTreeNormal = { bg = custom_bg, fg = off_white },
          NeoTreeNormalNC = { bg = custom_bg, fg = off_white },

          -- Floating windows match the hex background
          NormalFloat = { bg = custom_bg },
          FloatBorder = { bg = custom_bg, fg = theme.ui.shade0 },
          LazyNormal = { bg = custom_bg },
          MasonNormal = { bg = custom_bg },

          -- Active bracket line soft red (autumnRed)
          SnacksIndentScope = { fg = p.autumnRed },
          IblScope = { fg = p.autumnRed },
        }
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local colors = require("kanagawa.colors").setup({ theme = "dragon" })
      local p = colors.palette
      local theme = colors.theme

      local custom_lualine = require("lualine.themes.kanagawa")

      local bg_color = "#181616"
      local fg_color = theme.ui.fg

      local color_normal = p.autumnRed
      local color_insert = p.autumnGreen
      local color_visual = p.oniViolet
      local color_command = p.carpYellow

      custom_lualine.normal.a = { bg = color_normal, fg = theme.ui.bg, gui = "bold" }
      custom_lualine.normal.b = { bg = bg_color, fg = fg_color }
      custom_lualine.normal.c = { bg = bg_color, fg = fg_color }

      custom_lualine.insert.a = { bg = color_insert, fg = theme.ui.bg, gui = "bold" }
      custom_lualine.insert.b = { bg = bg_color, fg = fg_color }
      custom_lualine.insert.c = { bg = bg_color, fg = fg_color }

      custom_lualine.visual.a = { bg = color_visual, fg = theme.ui.bg, gui = "bold" }
      custom_lualine.visual.b = { bg = bg_color, fg = fg_color }
      custom_lualine.visual.c = { bg = bg_color, fg = fg_color }

      custom_lualine.command.a = { bg = color_command, fg = theme.ui.bg, gui = "bold" }
      custom_lualine.command.b = { bg = bg_color, fg = fg_color }
      custom_lualine.command.c = { bg = bg_color, fg = fg_color }

      custom_lualine.inactive.a = { bg = bg_color, fg = fg_color }
      custom_lualine.inactive.b = { bg = bg_color, fg = fg_color }
      custom_lualine.inactive.c = { bg = bg_color, fg = fg_color }

      opts.options = opts.options or {}
      opts.options.theme = custom_lualine
    end,
  },
}
