
local M = {}

local dir_map = {
    CAA_CMPS_DIR = "/packages/@dxp/caa-components",
    CAA_CMPS_PATTERN = "packages/@dxp/caa%-components"
}


local function is_caa_components_dir(file_path)
    return file_path:find(dir_map.CAA_CMPS_PATTERN)
end

local function run_jester(jester_fn, cmd)
    local cwd = vim.fn.getcwd();
    local file_path = vim.fn.expand("%")

    if (is_caa_components_dir(file_path)) then

        vim.api.nvim_set_current_dir(cwd .. dir_map.CAA_CMPS_DIR)
        require("jester")[jester_fn]({ cmd = cmd })
        vim.api.nvim_set_current_dir(cwd)

    else
        require("jester")[jester_fn]({ cmd = cmd })
    end
end

M.run_current_test = function ()
    run_jester("run", "yarn jest -t '$result' $file")
end

M.run_current_file = function ()
    run_jester("run_file", "yarn jest $file")
end

return M

