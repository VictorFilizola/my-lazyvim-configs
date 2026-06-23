-- add hl as global variable for lua
-- this is essential for constant warning
-- messages in hyprland
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "hl" },
              },
            },
          },
        },
      },
    },
  },
}
