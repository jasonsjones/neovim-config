local M = {}

local function mathEval(exp)
    return load("return " .. exp, exp, "t", math)()
end


M.calculateAndReplace = function ()
    local fileType = vim.bo.filetype

    if (fileType == 'ledger') then
        local amountRE = "[%d%.%-%+]+"
        local line = vim.api.nvim_get_current_line()
        local amountStr = string.match(line, amountRE)
        local calculatedAmount = mathEval(amountStr)
        local updatedline = string.gsub(line, amountRE, calculatedAmount)
        vim.api.nvim_set_current_line(updatedline)
    end

end

return M

