local opts = { silent = true }
local term_opts = { silent = true }

-- Remap space a leader key
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

--    Insert     --
-- Use 'kj' to enter normal mode
vim.keymap.set("i", "kj", "<ESC>", opts)

--    Normal     --
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex, { desc = "[F]ile [E]xplorer" })

-- Better window navigation
vim.keymap.set ("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set ("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set ("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set ("n", "<C-l>", "<C-w>l", opts)

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>bd", ":Bdelete!<CR>", opts)

