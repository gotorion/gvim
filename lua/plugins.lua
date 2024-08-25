return {
    "navarasu/onedark.nvim",
    "nvim-lualine/lualine.nvim",
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        dependencies = {
            { "ms-jpq/coq_nvim", branch = "coq" },
            -- 9000+ Snippets
            { "ms-jpq/coq.artifacts", branch = "artifacts" },
            -- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
            -- Need to **configure separately**
            { 'ms-jpq/coq.thirdparty', branch = "3p" }
            -- - shell repl
            -- - nvim lua api
            -- - scientific calculator
            -- - comment banner
            -- - etc
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
          end,
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
	"folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            signs = true,
            keywords = {
                FIX = {
                    icon = "",
                    color = "error",
                },
                TODO = {
                    icon = "󰸞",
                    color = "hint",
                },
            },
        },
    },
    {
        "nvim-telescope/telescope.nvim", tag = '0.1.8',
        dependencies = { "nvim-lua/plenary.nvim", },
    },
    dependecied = { 'nvim-tree/nvim-web-devicons' }
}
