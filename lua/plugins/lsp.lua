return{
        "neovim/nvim-lspconfig",
        lazy = false,
        dependencies = {
            { "ms-jpq/coq_nvim", branch = "coq" },
            { "ms-jpq/coq.artifacts", branch = "artifacts" },
            { 'ms-jpq/coq.thirdparty', branch = "3p" }
          },
          init = function()
            vim.g.coq_settings = {
                auto_start = true, -- if you want to start COQ at startup
                -- Your COQ settings here
                clients = {
                    snippets = {
                        enabled = true,
                        weight_adjust = 1,
                    },
                    lsp = {
                        enabled = true,
                        weight_adjust = 2,
                    },
                    lsp_inline = {
                        enabled = true,
                        weight_adjust = 1,
                    },
                    paths = {
                        path_seps = { '/' },
                    },
                },
                display = {
                    icons = {
                        mode = 'short',
                        mappings = {
                            Function = "󰡱",
                            Boolean = "",
                            Snippets = "",
                        },
                    },
                },
            }
          end,
          config = function()
              local lspconfig = require('lspconfig')
                lspconfig.clangd.setup{
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
