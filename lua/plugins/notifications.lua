return {
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = true,
      },
      routes = {
        -- Force all standard notifications to route to the minimalist bottom-right view
        {
          view = "mini",
          filter = { event = "msg_show" },
        },
      },
    },
  },
}
