-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.scrolloff = 8 -- keep 8 lines of context around cursor
vim.g.lazyvim_inlay_hints = false

-- Allow project-local .nvim.lua config files (trusted via :trust)
vim.o.exrc = true
