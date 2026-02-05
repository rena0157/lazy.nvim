return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed or {}, {
        "bash",
        "css",
        "graphql",
        "html",
        "javascript",
        "json",
        "json5",
        "jsonc",
        "lua",
        "markdown",
        "markdown_inline",
        "tsx",
        "typescript",
        "yaml",
      })
    end,
  },
}
