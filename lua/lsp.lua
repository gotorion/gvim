local lspconfig = require('lspconfig')
return {
    lspconfig.clangd.setup {
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "-j=4",
          "--fallback-style=LLVM",
        },
    },
    lspconfig.cmake.setup {
        cmd = {
            "cmake-language-server",
        },
        filetypes = {
            "cmake",
        },
    },
}

