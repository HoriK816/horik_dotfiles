-- reference
-- https://github.com/sainnhe/everforest/blob/master/doc/everforest.txt

return {
    {
        "sainnhe/everforest",
        priority = 1000,
        lazy = false,
        config = function()

            -- custom settings
            vim.g.everforest_background                = "hard"
            vim.g.everforest_enable_italic             = 1
            vim.g.everforest_disable_italic_comment    = 0 
            vim.g.everforest_cursor                    = "orange" 
            vim.g.everforest_transparent_background    = 0
            vim.g.everforest_dim_inactive_windows      = 0
            vim.g.everforest_sign_column_background    = 'none'
            vim.g.everforest_spell_foreground          = 'none'
            vim.g.everforest_ui_contrast               = 'high'
            vim.g.everforest_show_eob                  = 1
            vim.g.everforest_float_style               = 'dim'
            vim.g.everforest_diagnostic_text_highlight  = 1
            vim.g.everforest_diagnostic_line_highlight  = 0
            vim.g.everforest_disable_terminal_colors    = 1

            -- load corlorscheme
            vim.cmd.colorscheme("everforest")

            vim.opt.guicursor = "n-v-c-sm:block-Cursor",
                                "i-ci-ve:ver25-Cursor",
                                "r-cr-o:hor20-Cursor",
                                "t:block-TermCursor"
        end,
    },
}
