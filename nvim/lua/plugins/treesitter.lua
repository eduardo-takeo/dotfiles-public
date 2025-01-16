return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "cmake",
        "cpp",
        "css",
        "gitignore",
        "graphql",
        "http",
        "java",
        "scss",
        "sql",
        "javascript",
        "json",
        "markdown",
        "python",
        "typescript",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
