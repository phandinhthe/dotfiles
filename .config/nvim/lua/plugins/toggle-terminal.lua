vim.o.autochdir = true
return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shade_terminal = true,
    shading_factor = -20,
    auto_scroll = true,
    direction = "horizontal",
    autochdir = true,
    shell = vim.o.shell,
  },
}
