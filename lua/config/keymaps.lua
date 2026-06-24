--  are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-Left>", "<C-w>h", { desc = "Go to Left Window" })
vim.keymap.set("n", "<C-Down>", "<C-w>j", { desc = "Go to Lower Window" })
vim.keymap.set("n", "<C-Up>", "<C-w>k", { desc = "Go to Upper Window" })
vim.keymap.set("n", "<C-Right>", "<C-w>l", { desc = "Go to Right Window" })

vim.keymap.set("n", "<C-k>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-j>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-h>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

vim.keymap.set("t", "<C-Up>", [[<C-\><C-n><C-w>k]], { desc = "Jump from Terminal to Code" })
vim.keymap.set("t", "<C-Down>", [[<C-\><C-n><C-w>j]], { desc = "Jump into Terminal" })

vim.keymap.set("n", "<S-Left>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<S-Right>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- Command for custom command 'bx' - it deletes all buffers except current buffer, terminals and file tree
local delete_other_buffers = function()
  local cur = vim.api.nvim_get_current_buf()
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_valid(buf) and buf ~= cur then
      local bt = vim.bo[buf].buftype
      -- skip terminal, file explorers (nofile), quickfix, help
      if bt == "" then
        vim.api.nvim_buf_delete(buf, { force = false })
      end
    end
  end
end

vim.keymap.set(
  "n",
  "<leader>bx",
  delete_other_buffers,
  { desc = "Delete all buffers except current, terminal, and filetree" }
)
vim.api.nvim_create_user_command(
  "Bcloseothers",
  delete_other_buffers,
  { desc = "Close all normal buffers except current" }
)
