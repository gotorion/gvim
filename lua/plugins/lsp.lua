return{
    {
        "neovim/nvim-lspconfig",
        lazy = true,
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
              vim.keymap.set('n', 'gn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
              vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
              vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
              vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
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
                --- python
                lspconfig.pyright.setup({}),
                --- cpp
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
                    initialization_options = {
                        fallback_flags = { '-std=c++20' },
                    },
                },
                --- cmake
                lspconfig.neocmake.setup {
                    cmd = { 'neocmakelsp', '--stdio' },
                    filetypes = { 'cmake' },
                    init_options = {
                        buildDirectory = 'build',
                    },
                    single_file_support = true,
                },
                --- rust
                lspconfig.rust_analyzer.setup {},
                --- lua
                lspconfig.lua_ls.setup {
                    on_init = function(client)
                    if client.workspace_folders then
                      local path = client.workspace_folders[1].name
                      if vim.uv.fs_stat(path..'/.luarc.json') or vim.uv.fs_stat(path..'/.luarc.jsonc') then
                        return
                      end
                    end

                    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                      runtime = {
                        version = 'LuaJIT'
                      },
                      workspace = {
                        checkThirdParty = false,
                        library = {
                          vim.env.VIMRUNTIME
                        }
                      }
                    })
                  end,
                  settings = {
                    Lua = {}
                  }
                },
                --- golang
                lspconfig.gopls.setup {
                    cmd = { 'gopls' },
                    filetypes = {
                        'go', 'gomod', 'gowork', 'gotmpl'
                    },
                    single_file_support = true,
                },
                --- haskell
                lspconfig.hls.setup( {
                    filetypes = {'haskell', 'lhaskell', 'cabal'},
                    single_file_support = true,
                })
            }
        end
    },
}
