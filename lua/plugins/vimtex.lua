return {
  "lervag/vimtex",
  lazy = false, -- VimTeX handles its own loading triggers
  init = function()
    -- Tell VimTeX to use Sioyek as the visual rendering window
    vim.g.vimtex_view_method = "sioyek"

    -- Automatically open the viewer when you start compiling a document
    vim.g.vimtex_view_automatic = 1
  end,
}
