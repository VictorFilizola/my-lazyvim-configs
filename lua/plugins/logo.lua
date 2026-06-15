return {
  {
    "folke/snacks.nvim",
    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          -- Overrides the default header color. Replace with any valid hex code.
          vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#cc241d" })
        end,
      })
    end,
    opts = {
      dashboard = {
        preset = {
          header = [[
   ▄████████  ▄█   ▄█        ▄█      ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄   
  ███    ███ ███  ███       ███     ███    ███ ███  ▄██▀▀▀███▀▀▀██▄ 
  ███    █▀  ███▌ ███       ███▌    ███    ███ ███▌ ███   ███   ███ 
 ▄███▄▄▄     ███▌ ███       ███▌ ██ ███    ███ ███▌ ███   ███   ███ 
▀▀███▀▀▀     ███▌ ███       ███▌    ███    ███ ███▌ ███   ███   ███ 
  ███        ███  ███       ███      ██    ██  ███  ███   ███   ███ 
  ███        ███  ███▌    ▄ ███       ██  ██   ███  ███   ███   ███ 
  ███        █▀   █████▄▄██ █▀        ▀████▀   █▀    ▀█   ███   █▀  
                  ▀                                               
          ]],
        },
      },
    },
  },
}
