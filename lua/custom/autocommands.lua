local augroup = vim.api.nvim_create_augroup
local OrionGroup = augroup("Orion", {})

local autocmd = vim.api.nvim_create_autocmd

-- Remove trailing whitespace on save (for all files)
autocmd({"BufWritePre"}, {
    group = OrionGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]]
})

