local wiki_options = {
    path = "~/notes/wiki",
    syntax = "markdown",
    ext = ".md"
}

vim.api.nvim_set_var("vimwiki_list", {wiki_options})
-- vim.g.vimwiki_list = {{path = "~/notes/vimwiki"}}

 --[[
     It's unrelated to the OP's question, but...
     in case it helps the next person, Lua doesn't like keys
     that start with a period, so you might need something like
     this if you choose to use Markdown with VimWiki:

     vim.g.vimwiki_ext2syntax = {
         ['.md'] = 'markdown',
         ['.markdown'] = 'markdown',
         ['.mdown'] = 'markdown'
     }
 ]]

