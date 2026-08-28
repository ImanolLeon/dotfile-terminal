return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		require("which-key").setup({
			win = {
				border = "rounded",
			},
			icons = {
				breadcrumb = "»",
				separator = "➜ ",
				group = "+",
			},
			plugins = {
				marks = false,
				registers = false,
				spelling = { enabled = false },
				presets = {
					operators = false,
					motions = false,
					text_objects = false,
					windows = false,
					nav = false,
					z = false,
					g = false,
				},
			},
		})
		-- Colores personalizados
		vim.api.nvim_set_hl(0, "WhichKey", { fg = "#c792ea", bold = true })
		vim.api.nvim_set_hl(0, "WhichKeyGroup", { fg = "#82aaff" })
		vim.api.nvim_set_hl(0, "WhichKeyDesc", { fg = "#8aadf4" })
		vim.api.nvim_set_hl(0, "WhichKeySeparator", { fg = "#a6da95" })
		vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = "#1a1b26" })
		vim.api.nvim_set_hl(0, "WhichKeyBorder", { fg = "#7aa2f7" })
	end,
}
