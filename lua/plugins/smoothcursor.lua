return {
    'gen740/SmoothCursor.nvim',
    config = function()
        require('smoothcursor').setup {
            fancy = {
                    enable = true,    
                    head = { cursor = "▷", texthl = "SmoothCursor", linehl = nil }, -- false to disable fancy head
                    body = {
                        { cursor = "󰝥", texthl = "SmoothCursorRed" },
                        { cursor = "󰝥", texthl = "SmoothCursorOrange" },
                        { cursor = "●", texthl = "SmoothCursorYellow" },
                        { cursor = "●", texthl = "SmoothCursorGreen" },
                        { cursor = "•", texthl = "SmoothCursorAqua" },
                        { cursor = ".", texthl = "SmoothCursorBlue" },
                        { cursor = ".", texthl = "SmoothCursorPurple" },
                    },
                    tail = { cursor = nil, texthl = "SmoothCursor" } -- false to disable fancy tail
                },
            type = "default",           
            autostart = true,           -- Automatically start SmoothCursor
            always_redraw = true,       -- Redraw the screen on each update
            flyin_effect = top,         -- Choose "bottom" or "top" for flying effect
            speed = 100,                 -- Max speed is 100 to stick with your current position
            intervals = 35,             -- Update intervals in milliseconds
            priority = 10,              -- Set marker priority
            timeout = 3000,             -- Timeout for animations in milliseconds
            threshold = 3,              -- Animate only if cursor moves more than this many lines
            max_threshold = 100,        
            disable_float_win = false,  -- Disable in floating windows
            enabled_filetypes = nil,    -- Enable only for specific file types, e.g., { "lua", "vim" }
            disabled_filetypes = {
                NvimTree,
                TelescopePrompt,
            },    
            show_last_positions = nil,  
      }
    end
}
