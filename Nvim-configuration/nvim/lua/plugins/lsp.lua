return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {
        "lua_ls",
        "taplo",
        "intelephense",
        "html",
        "cssls",
        "emmet_ls",
        "ts_ls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("taplo")
      vim.lsp.enable("intelephense")
      vim.lsp.enable("html")
      vim.lsp.enable("cssls")
      vim.lsp.enable("emmet_ls")
      vim.lsp.enable("ts_ls")
    end,
  },
}
