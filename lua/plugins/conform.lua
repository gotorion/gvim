local conf = {
    "stevearc/conform.nvim",
    event = VeryLazy,
    config = function()
        require('conform').setup {
            rust = { 
                "rustfmt",
                lsp_format = "fallback",
            }
        }
    end
}
return conf
