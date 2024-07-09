local catppuccin = {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "macchiato", -- latte, frappe, macchiato, mocha
      transparent_background = false,

      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        telescope = {
          enabled = true,
        },
      },
    })
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    vim.cmd("highlight Normal guibg=none")
    vim.cmd("highlight NonText guibg=none")
    vim.cmd("highlight Normal ctermbg=none")
    vim.cmd("highlight NonText ctermbg=none")
    vim.cmd.colorscheme("catppuccin")
  end,
}

local dracula = {
  "maxmx03/dracula.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    local dracula = require("dracula")

    local config = {
      transparent = true,
    }
    dracula.setup(config)

    vim.cmd.colorscheme("dracula")
  end,
}

return catppuccin
