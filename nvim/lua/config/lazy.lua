-- load lazy

local nvim_path  = vim.fn.stdpath("data")
local lazy_path  = nvim_path .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazy_path) then

    -- clone lazy from the remote repository
    local lazy_remote_repo = "https://github.com/folke/lazy.nvim.git" 
    local out = vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        lazy_remote_repo,
        lazy_path })

    -- print error strings when lazy fails to load plugins 
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
          { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
          { out, "WarningMsg" },
          { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end

-- at first, neovim load lazy 
vim.opt.rtp:prepend(lazy_path)


-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({

  -- import your plugins
  spec = {
    { import = "plugins" },
  },

  -- automatically check for plugin updates
  checker = { enabled = true },
})
