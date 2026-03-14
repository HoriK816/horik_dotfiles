local keyset  = vim.keymap.set 
local options = { noremap = true, silent = true }

-- moving between windows
keyset("n", "<C-h>", "<C-w>h", options)
keyset("n", "<C-j>", "<C-w>j", options)
keyset("n", "<C-k>", "<C-w>k", options)
keyset("n", "<C-l>", "<C-w>l", options)

-- telescope 
keyset("n", "<leader>ff", 
       function()
           require('telescope.builtin').find_files()
       end,
       { desc = 'Telescope find files' })

keyset("n", "<leader>fg", 
       function()
           require('telescope.builtin').live_grep()
       end,
       { desc = 'Telescope live grep' })

keyset("n", "<leader>fb", 
       function()
           require('telescope.builtin').buffers()
       end,
       { desc = 'Telescope buffers' })

keyset("n", "<leader>fh", 
       function()
           require('telescope.builtin').help_tags()
       end,
       { desc = 'Telescope help tags' })

