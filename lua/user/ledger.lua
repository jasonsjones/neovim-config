local M = {}

function mathEval(exp)
  return load("return " .. exp, exp, "t", math)()
end


M.calculateAndReplace = function ()
    local fileType = vim.bo.filetype

    if (fileType == 'ledger') then
        local line = vim.api.nvim_get_current_line()
        local dollarIdx = string.find(line, '%$')
        local amount = string.sub(line, dollarIdx+1, string.len(line))
        local calculatedAmount = mathEval(amount)
        local amountEscStr = string.gsub(amount, "%-", "%%-")
        local updatedline = string.gsub(line, amountEscStr, calculatedAmount)
        vim.api.nvim_set_current_line(updatedline)
    end

end

return M

