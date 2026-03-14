return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local lualine = require("lualine")

        lualine.setup({
            options = {
                theme = "gruvbox",
            },
            sections = {
                lualine_a = {"mode"},
                lualine_b = {"branch"},
                lualine_c = {"filename"},
                lualine_x = {"filetype"},
                lualine_y = {"encoding"},
                lualine_z = {"location"},
            }

        })
    end,
}
