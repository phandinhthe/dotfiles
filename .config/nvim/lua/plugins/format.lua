local conform = {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      javascript = { "prettierd" },
      html = { "htmlbeautifier" },
      css = { "prettier", "prettierd" },
      markdown = { "prettier" },
      lua = { "stylua" },
    },
  },
}

return conform
