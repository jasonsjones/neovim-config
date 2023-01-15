local opts = { silent = true }
local term_opts = { silent = true }

-- Remap space a leader key
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Insert --
-- Use 'kj' to enter normal mode
vim.keymap.set("i", "kj", "<ESC>", opts)

