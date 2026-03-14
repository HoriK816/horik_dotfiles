return{
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy  = false,
    build = ":TSUpdate",
    config = function()
        local tresitter = require("nvim-treesitter.configs")

        tresitter.setup({

            -- sytax highlight
            highlight = {
                enable = true,
            },
            
            -- indentation            
            indent = {
                enable = true,
            },
            
            -- language parsers 
            ensure_installed = {
                -- script language
                "bash", 
                "python",
                "javascript",
                "typescript",
                "lua",

                -- compiled language 
                "c",
                "cpp",
                "java",
                "vim",
                "rust",

                -- data 
                "query",
                "json",
                "yaml",
                "html",
                "css",
                "markdown",
                "markdown_inline",
                "vimdoc",
                "dockerfile",
                "gitignore"
            },
        })
    end,
}
