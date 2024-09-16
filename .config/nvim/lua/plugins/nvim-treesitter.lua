return {

  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      sync_install = false,
      auto_install = true,
      ignore_install = {},
      indent = {
        enable = true,
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      ensure_installed = {
        "lua", "c", "vim", "vimdoc", "query", "css", "java", "go", "javascript", "html"
      }
    })
  end,
}
