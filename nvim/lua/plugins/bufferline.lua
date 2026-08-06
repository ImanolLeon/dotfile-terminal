return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local bufferline = require("bufferline")
    bufferline.setup({
      options = {
        indicator = {
          icon = "●",
          style = "icon",
        },
        modified_icon = "●",        -- círculo rojo cuando no está guardado
        separator_style = "slant",  -- estilo bonito con triángulos
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        offsets = {
          {
            filetype = "NvimTree",
            text = "Explorador",
            highlight = "Directory",
            separator = true,
          },
        },
      },
      highlights = {
        indicator_selected = {
          fg = "#a6e3a1",  -- verde catppuccin para el buffer activo
        },
        modified = {
          fg = "#f38ba8",  -- rojo para modificado
        },
        modified_selected = {
          fg = "#f38ba8",  -- rojo para modificado activo
        },
        modified_visible = {
          fg = "#f38ba8",
        },
        buffer_selected = {
          bold = true,
          italic = false,
       	fg = "#ca9ee6"		
	},
      },
    })

  end,
}
