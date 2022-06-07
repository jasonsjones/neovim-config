local status_ok, dap = pcall(require, "dap")
if not status_ok then
    return
end

-- dap.set_log_level("DEBUG")

dap.adapters.node2 = {
    type = "executable",
    command = "node",
    args = { os.getenv("HOME") .. "/.config/nvim/dap-adapters/vscode-node-debug2/out/src/nodeDebug.js" },
}

dap.configurations.javascript = {
    {
        name = "attach",
        type = "node2",
        request = "attach",
    },
}

vim.keymap.set("n", "<F5>", "<cmd>lua require('dap').continue()<CR>", {silent = true})
vim.keymap.set("n", "<leader>db", "<cmd>lua require('dap').toggle_breakpoint()<CR>", {silent = true})

