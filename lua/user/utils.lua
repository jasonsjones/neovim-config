local api = vim.api

-- Remvoe trailing whitespace on save (for all files)
api.nvim_exec([[ autocmd BufWritePre * :%s/\s\+$//e ]], false)

