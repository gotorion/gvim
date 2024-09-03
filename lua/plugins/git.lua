return {
    'lewis6991/gitsigns.nvim',
    config = function()
        require('gitsigns').setup {
              signs_staged_enable = true,
              signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
              numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
              linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
              word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
              watch_gitdir = {
                follow_files = true
              },
              auto_attach = true,
              attach_to_untracked = false,
              current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
              current_line_blame_opts = {
                virt_text = true,
                virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
                delay = 200,
                ignore_whitespace = false,
                virt_text_priority = 100,
              },
        }
    end
}
