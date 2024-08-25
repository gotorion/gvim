return {
    "navarasu/onedark.nvim",
    "nvim-lualine/lualine.nvim",
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    dependecied = { 'nvim-tree/nvim-web-devicons' }
}
