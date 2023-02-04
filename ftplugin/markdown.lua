
-- Softwrap at window width, break on words
vim.opt.wrap = true
vim.opt.linebreak = true

vim.opt.spell = true
vim.opt.spelllang = "en_us"

-- Handle wrapped lines as expected
vim.keymap.set("n", "j", function()
    -- lua ternary style:
    -- return vim.v.count == 0 and "gj" or "j"
    --
    if vim.v.count == 0 then
        return "gj"
    end
    return "j"
end, { silent = true, expr = true })

vim.keymap.set("n", "k", function()
    -- lua ternary style:
    -- return vim.v.count == 0 and "gk" or "k"
    --
    if vim.v.count == 0 then
        return "gk"
    end
    return "k"
end, { silent = true, expr = true })
