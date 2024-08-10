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
    },
}
