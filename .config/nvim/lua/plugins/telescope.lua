return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    --    telescope.setup({
    --      defaults = {
    --        path_display = { "truncate " },
    --        mappings = {
    --          i = {
    --            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
    --            ["<C-j>"] = actions.move_selection_next, -- move to next result
    --            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
    --          },
    --        },
    --      },
    --    })

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    --keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    --keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    --keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    --keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
    keymap.set(
      "n",
      "<leader>fc",
      "<cmd>Telescope find_files search_dirs={'$HOME/.config/nvim/lua/config/'}<cr><esc>",
      { desc = "Fuzzy find files in nvim config" }
    )
    keymap.set(
      "n",
      "<leader>fp",
      "<cmd>Telescope find_files search_dirs={'$HOME/.config/nvim/lua/plugins/'}<cr><esc>",
      { desc = "Fuzzy find files in nvim plugin" }
    )

    keymap.set(
      "n",
      "<leader>te",
      "<cmd>Telescope find_files search_dirs={'$HOME/Pet/'}<cr><esc>",
      { desc = "Fuzzy find files in Pet folder" }
    )
  end,
}
