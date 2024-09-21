require('config.lazy')
require('options')
if vim.g.neovide then
    vim.o.guifont = "JetBrains Mono:h18" -- text below applies for VimScript
    vim.g.neovide_window_blurred = true
end
