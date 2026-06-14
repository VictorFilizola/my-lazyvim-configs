return {
  {
    "folke/flash.nvim",
    opts = {},
    config = function(_, opts)
      -- Initialize flash with its standard options
      require("flash").setup(opts)

      -- Apply custom high-contrast highlight overrides
      -- eg: Gruvbox Aqua/Cyan (#8ec07c), fg: Dark background (#181616)
      vim.api.nvim_set_hl(0, "FlashLabel", { fg = "#181616", bg = "#8ec07c", bold = true })
    end,
  },
}
