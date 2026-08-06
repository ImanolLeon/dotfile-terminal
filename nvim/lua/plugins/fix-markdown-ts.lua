vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.bo.syntax = "markdown" -- usa el resaltado clásico de Vim en vez de treesitter
    vim.treesitter.stop()
  end,
})

return {}
