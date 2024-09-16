-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("t", "<C-j>", "<esc>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<esc>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("v", "<C-j>", "<esc>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("i", "<C-j>", "<esc>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("x", "<C-j>", "<esc>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("s", "<C-j>", "<esc>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("l", "<C-j>", "<esc>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("c", "<C-j>", "<esc>", { silent = true, noremap = true })

vim.api.nvim_set_keymap("n", "<C-k>", "<cmd>w!<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("v", "<C-k>", "<cmd>w!<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("x", "<C-k>", "<cmd>w!<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("s", "<C-k>", "<cmd>w!<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("i", "<C-k>", "<cmd>w!<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("l", "<C-k>", "<cmd>w!<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("c", "<C-k>", "<cmd>w!<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("t", "<C-k>", "<cmd>w!<cr>", { silent = true, noremap = true })

-- Restart keymap: map<C-s> <Nop>
--

--vim.api.nvim_set_keymap("i", "<C-s>", "<Nop>", { silent = true, noremap = true })
--vim.api.nvim_set_keymap("v", "<C-s>", "<Nop>", { silent = true, noremap = true })
--vim.api.nvim_set_keymap("n", "<C-s>", "<Nop>", { silent = true, noremap = true })
--vim.api.nvim_set_keymap("o", "<C-s>", "<Nop>", { silent = true, noremap = true })
