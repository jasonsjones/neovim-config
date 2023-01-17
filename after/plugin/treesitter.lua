local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup {
    ensure_installed = { "help", "ledger", "lua" },

    sync_install = false,

    autopairs = {
        enable = true
    },

    indent = {
        enable = true,
        disable = { "yaml" }
    },

    highlight = {
        enable = true, -- false will disable the whole extension
        additional_vim_regex_highlighting = false,
    }
}

