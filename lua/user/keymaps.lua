local opts = { noremap = true, silent = true }

-- Shorten funciton name
local keymap = vim.api.nvim_set_keymap

-- Remap space a leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap ("n", "<C-h>", "<C-w>h", opts)
keymap ("n", "<C-j>", "<C-w>j", opts)
keymap ("n", "<C-k>", "<C-w>k", opts)
keymap ("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press kj fast to enter normal mode
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Press kj fast to enter normal mode
keymap("v", "kj", "<ESC>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "p", '"_dP', opts)

keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
-- keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

