return{
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
        local lspconfig = require('lspconfig')
        lspconfig.clangd.setup {
            cmd = {
              "clangd",
              "--background-index",
              "--clang-tidy",
              "--header-insertion=iwyu",
              "--completion-style=detailed",
              "-j=4",
              "--fallback-style=LLVM",
              "--clang-tidy",
            },
            initialization_options = {
                fallback_flags = { '-std=c++17' },
            },
        }
    end
}
