local builtin = require("telescope.builtin")

-- Copiar seleccionado al portapapeles del sistema con Ctrl-C
vim.keymap.set("v", "<C-c>", '"+y', { silent = true })

-- Selección de texto tipo editor normal (Ctrl+Shift+Flecha)
vim.keymap.set({ "n", "i" }, "<C-S-Right>", "<Esc>v<C-Right>", { silent = true })
vim.keymap.set({ "n", "i" }, "<C-S-Left>", "<Esc>v<C-Left>", { silent = true })
vim.keymap.set("v", "<C-S-Right>", "<C-Right>", { silent = true })
vim.keymap.set("v", "<C-S-Left>", "<C-Left>", { silent = true })
vim.keymap.set("v", "<BS>", "d", { silent = true })

-- Abrir administrador de archivos en forma de árbol (Ctrl+A)
vim.keymap.set("n", "<C-a>", ":NvimTreeToggle<CR>")

-- Moverse entre archivos (Tab)
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")

-- Buscar archivos en el proyecto (Shift+F)
vim.keymap.set("n", "<S-f>", function()
	builtin.find_files({
		cwd = vim.fn.expand("~"), -- carpeta del archivo actual
		find_command = {
			"fd",
			"--type",
			"f",
			"--hidden",
			"--exclude",
			".git",
			"--exclude",
			".cache",
			"--exclude",
			".local",
			"--exclude",
			".cargo",
			"--exclude",
			".rustup",
		},
	})
end, { desc = "Buscar archivos desde el home " })

-- Buscar palabras en el archivo activo (Shift+S)
vim.keymap.set("n", "<S-s>", builtin.current_buffer_fuzzy_find, { desc = "Buscar palabras en pestaña abierta" })

--indentar selección con tab (Permite que todo lo que selecciones puedas dar tab)
vim.keymap.set("v", "<Tab>", ">gv", { silent = true, desc = "Indentar selección" })

-- Ctrl + flecha derecha: saltar al inicio de la siguiente palabra (en insert)
vim.keymap.set("i", "<C-Right>", "<C-o>w", { desc = "Saltar palabra a la derecha" })

-- Ctrl + flecha izquierda: saltar al inicio de la palabra anterior (en insert)
vim.keymap.set("i", "<C-Left>", "<C-o>b", { desc = "Saltar palabra a la izquierda" })
--Formatear codigo
vim.keymap.set({ "n", "v" }, "<C-A-f>", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Formatear archivo o selección" })
