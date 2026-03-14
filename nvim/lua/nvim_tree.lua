-- disable netrw and enable the plugin
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

-- replace "Ex" command 
local trigger_word  = "Ex"
local nvim_tree_cmd = function()
                          vim.cmd("NvimTreeToggle")
                      end

vim.api.nvim_create_user_command(trigger_word, nvim_tree_cmd, {})

