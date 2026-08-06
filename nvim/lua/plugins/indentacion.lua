return {
  -- Guías visuales de indentación
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = {
        char = "│",
      },
      scope = {
        enabled = true,
        show_start = true,
        show_end = false,
      },
    },
  },

  -- Detecta automáticamente tabs/espacios según el archivo
  {
    "nmac427/guess-indent.nvim",
    opts = {},
  },
}
