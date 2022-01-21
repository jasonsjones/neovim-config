local colorscheme = "onedark"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found.")
    return
end

-- Target event 'BufEnter' since the 'Colorscheme' event will get overridden
-- when the actual colorscheme is loaded, which happens after the autocmd fires
vim.cmd([[
    augroup CustomColors
        autocmd!
        autocmd BufEnter * highlight CursorLineNR guifg=#ffe162
    augroup end
]])

