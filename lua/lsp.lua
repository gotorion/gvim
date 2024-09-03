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
          "--fallback-style=Google",
        },
        init_options = {
            fallback_flags = { '-std=c++2a', '-fcoroutine' },
        },
    },
    lspconfig.cmake.setup {
        cmd = {
            "cmake-language-server",
        },
        filetypes = {
            "cmake", "txt",
        },
        init_options = {
            buildDirectory = 'build',
        },
        single_file_support = true,
    },
}

