return {
    {
        "gbprod/yanky.nvim",
    },
        {
        "hrsh7th/nvim-cmp",
        dependencies = {
            'neovim/nvim-lspconfig',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lsp-signature-help',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'f3fora/cmp-spell',
            'hrsh7th/cmp-emoji',
            'hrsh7th/cmp-calc',
            'hrsh7th/nvim-cmp',
            'onsails/lspkind-nvim',
            'chrisgrieser/cmp-yanky',
            'lukas-reineke/cmp-rg',
            'lukas-reineke/cmp-under-comparator',
            'saadparwaiz1/cmp_luasnip',
            'L3MON4D3/LuaSnip',
            'rafamadriz/friendly-snippets',
        },
        config = function()
            local cmp = require('cmp')
            --- function has_words_before
            local function has_words_before()
                local cursor = vim.api.nvim_win_get_cursor(0)
                local line = cursor[1]
                local col = cursor[2]
                return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
            end
            --- cmp setup
            cmp.setup {
                preselect = 'none',
                completion = {
                    completeopt = 'menu, menuone, noinsert, noselect',
                    snippet = {
                        expand = function(args)
                            require('luasnip').lsp_expand(args.body)
                        end
                    },
                },
                sources = cmp.config.sources {
                    {name = "nvim_lsp", max_item_count = 10, },
                    {name = "buffer",   max_item_count = 8, keyword_length = 2 },
                    {name = "luasnip",  max_item_count = 8 },
                    {name = "path",     max_item_count = 3 },
                    {name = "cacl",     max_item_count = 3},
                },
                mapping = {
                    ['<C-p>'] = cmp.mapping.select_prev_item(),
                    ['<C-n>'] = cmp.mapping.select_next_item(),
                    ["<Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        elseif require("luasnip").expand_or_jumpable() then
                            require("luasnip").expand_or_jump()
                        elseif has_words_before() then
                            cmp.complete()
                        else
                            fallback()
                        end
                    end, { "i", "s" }),
                    ["<S-Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        elseif require("luasnip").jumpable(-1) then
                            require("luasnip").jump(-1)
                        else
                            fallback()
                        end
                    end, { "i", "s" }),
                    -- 出现补全
                    ['<C-j>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
                    -- 取消
                    ['<C-k>'] = cmp.mapping({
                            i = cmp.mapping.abort(),
                            c = cmp.mapping.close(),
                        }),
                    ['<CR>'] = cmp.mapping.confirm({
                        select = false,
                        behavior = cmp.ConfirmBehavior.Insert,
                    }),
                    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
                    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
                },
                formatting = {
                    format = os.getenv("NERD_FONTS") and lspkind.cmp_format {
                        mode = 'symbol',
                        maxwidth = 50,
                        before = function(entry, vim_item) vim_item.menu = "["..string.upper(entry.source.name).."]"
                            if entry.source.name == "calc" then 
                                vim_item.kind = "Calc"
                            end
                            if entry.source.name == "git" then
                                vim_item.kind = "Git"
                            end
                            if entry.source.name == "rg" then
                                vim_item.kind = "Search"
                            end
                            if entry.source.name == "rime" then
                                vim_item.kind = "Rime"
                            end
                            if entry.source.name == "cmp_yanky" then
                                vim_item.kind = "Clipboard"
                            end
                        -- if entry.source.name == "nvim_lsp_signature_help" then
                        --     vim_item.kind = "Call"
                        -- end
                        -- vim_item = require("tailwindcss-colorizer-cmp").formatter(entry, vim_item)
                            return vim_item
                        end,
                        ellipsis_char = '...',
                        symbol_map = {
                            Text = "󰉿",
                            Method = "󰆧",
                            Function = "󰊕",
                            Constructor = "",
                            Field = "󰜢",
                            Variable = "󰀫",
                            Class = "󰠱",
                            Interface = "",
                            Module = "",
                            Property = "󰜢",
                            Unit = "󰑭",
                            Value = "󰎠",
                            Enum = "",
                            Keyword = "󰌋",
                            Snippet = "",
                            Color = "󰏘",
                            File = "󰈙",
                            Reference = "󰈇",
                            Folder = "󰉋",
                            EnumMember = "",
                            Constant = "󰏿",
                            Struct = "󰙅",
                            Event = "",
                            Operator = "󰆕",
                            TypeParameter = "",
                            Calc = "",
                            Git = "",
                            Search = "",
                            Rime = "",
                            Clipboard = "",
                            Call = "",
                        },
                    },
                }
            }
        end
    }
}
