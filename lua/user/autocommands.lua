-- Remvoe trailing whitespace on save (for all files)
vim.cmd([[ autocmd BufWritePre * :%s/\s\+$//e ]])

