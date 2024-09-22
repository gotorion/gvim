local conf_func = function()
    local navic = require('nvim-navic')
    require('lspconfig').clangd.setup {
        on_attach = function(client, bufnr)
            navic.attach(client, bufnr)
        end
    }
end

local conf = {
    'SmiteshP/nvim-navic',
    config = conf_func
}
return conf
