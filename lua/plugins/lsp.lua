return{
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
        end
    },
    --- lsp-zero
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v4.x',
        config = function() 
            local lsp_attach = function(client, bufnr)
              local opts = {buffer = bufnr}
              vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
              vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
              vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
              vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
              vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
              vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
              vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
              vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
              vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
              vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
            end
            
            local lsp_zero = require('lsp-zero')
            lsp_zero.extend_lspconfig({
              sign_text = true,
              lsp_attach = lsp_attach,
              capabilities = require('cmp_nvim_lsp').default_capabilities(),
            })
            -- don't add this function in the `lsp_attach` callback.
            -- `format_on_save` should run only once, before the language servers are active.
            lsp_zero.format_on_save({
              format_opts = {
                async = false,
                timeout_ms = 10000,
              },
              servers = {
                ['rust_analyzer'] = {'rust'},
                ['clangd'] = {'cpp', 'c'}
              }
            })

            local lspconfig = require('lspconfig')
            lsp_zero.setup {
                --- cpp
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
                },
                --- rust
                lspconfig.rust_analyzer.setup {},
            }
        end
    },
}
