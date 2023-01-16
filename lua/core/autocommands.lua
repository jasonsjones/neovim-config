local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local OrionGroup = augroup("Orion", { clear = true })
local HighlightGroup = augroup("YankHighlight", { clear = true })

-- Remove trailing whitespace on save (for all files)
autocmd({"BufWritePre"}, {
    group = OrionGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]]
})

-- Highlight on yank
autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = HighlightGroup,
    pattern = "*"
})

