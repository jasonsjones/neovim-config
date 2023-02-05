local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    return
end

null_ls.setup {
    debug = false,
    sources = {
        null_ls.builtins.formatting.prettier.with({
            only_local = "node_modules/.bin"
        }),
    },
}

