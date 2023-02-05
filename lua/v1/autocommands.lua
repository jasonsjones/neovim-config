-- Remvoe trailing whitespace on save (for all files)
vim.cmd([[ autocmd BufWritePre * :%s/\s\+$//e ]])

vim.cmd([[
    augroup Markdown
        autocmd!
        autocmd FileType markdown set wrap | set linebreak | set textwidth=80
    augroup end
]])

