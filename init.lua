require("config.lazy")
require('plugins')
require('options')
require('keymaps')
require('colorscheme')
-- require("lazy").setup({
--     "scottmckendry/cyberdream.nvim",
--     "nvim-lualine/lualine.nvim",
--     {
--         "neovim/nvim-lspconfig",
--         lazy = false,
--         dependencies = {
--             -- main one
--             { "ms-jpq/coq_nvim", branch = "coq" },
--             -- 9000+ Snippets
--             { "ms-jpq/coq.artifacts", branch = "artifacts" },
--             -- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
--             -- Need to **configure separately**
--             { 'ms-jpq/coq.thirdparty', branch = "3p" }
--             -- - shell repl
--             -- - nvim lua api
--             -- - scientific calculator
--             -- - comment banner
--             -- - etc
--           },
--           init = function()
--             vim.g.coq_settings = {
--                 auto_start = true, -- if you want to start COQ at startup
--                 -- Your COQ settings here
--             }
--           end,
--           config = function()
--             -- Your LSP settings here
--           end,
--     },
--     {
--         "askfiy/visual_studio_code",
--         priority = 100,
--         config = function()
--             vim.cmd([[colorscheme visual_studio_code]])
--         end,
--     },
--     {
--         "iamcco/markdown-preview.nvim",
--         cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
--         ft = { "markdown" },
--         build = function() vim.fn["mkdp#util#install"]() end,
--     },
--     dependecied = { 'nvim-tree/nvim-web-devicons' }
-- })
-- 
-- require'lspconfig'.clangd.setup{
--     cmd = {
--       "clangd",
--       "--background-index",
--       "--clang-tidy",
--       "--header-insertion=iwyu",
--       "--completion-style=detailed",
--       "-j=4",
--       "--fallback-style=LLVM",
--     },
-- }


