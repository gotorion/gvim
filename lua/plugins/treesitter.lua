return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = {"c", "lua", "markdown", "cmake", "cpp"},
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = true,
        },
    },
}
