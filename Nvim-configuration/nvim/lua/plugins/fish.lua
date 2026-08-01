return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable("fish_lsp")
    end,
  },
}
