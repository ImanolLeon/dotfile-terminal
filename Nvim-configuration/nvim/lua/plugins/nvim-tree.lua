return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,
      },
      -- esto hace que bufferline no cuente nvim-tree como buffer
      filters = {
        dotfiles = false,
      },
    })

end,
}
