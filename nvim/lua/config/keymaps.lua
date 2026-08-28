local builtin = require("telescope.builtin")

-- Copiar seleccionado al portapapeles del sistema con Ctrl-C
vim.keymap.set("v", "<C-c>", '"+y', { silent = true, desc = "Copiar selección al portapapeles" })

-- Selección de texto tipo editor normal (Ctrl+Shift+Flecha)
vim.keymap.set({ "i" }, "<C-S-Right>", "<Esc>v<C-Right>", { silent = true, desc = "Seleccionar palabra a la derecha" })
vim.keymap.set({ "i" }, "<C-S-Left>", "<Esc>v<C-Left>", { silent = true, desc = "Seleccionar palabra a la izquierda" })
vim.keymap.set("v", "<C-S-Right>", "<C-Right>", { silent = true, desc = "Extender selección a la derecha" })
vim.keymap.set("v", "<C-S-Left>", "<C-Left>", { silent = true, desc = "Extender selección a la izquierda" })
vim.keymap.set("v", "<BS>", "d", { silent = true, desc = "Borrar selección" })

-- Abrir administrador de archivos en forma de árbol (Ctrl+A)
vim.keymap.set("n", "<C-a>", ":NvimTreeToggle<CR>", { desc = "Abrir/cerrar árbol de archivos" })

-- Moverse entre archivos (Tab)
-- Moverte a la derecha (siguiente buffer)
vim.keymap.set("n", "<C-S-Right>", ":BufferLineCycleNext<CR>", { silent = true, desc = "Ir al buffer siguiente" })
-- Moverte a la izquierda (buffer anterior)
vim.keymap.set("n", "<C-S-Left>", ":BufferLineCyclePrev<CR>", { silent = true, desc = "Ir al buffer anterior" })

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
end, { desc = "Buscar archivos desde el home" })

-- Buscar palabras en el archivo activo (Shift+S)
vim.keymap.set("n", "<S-s>", builtin.current_buffer_fuzzy_find, { desc = "Buscar palabras en pestaña abierta" })

-- Indentar selección con tab (Permite que todo lo que selecciones puedas dar tab)
vim.keymap.set("v", "<Tab>", ">gv", { silent = true, desc = "Indentar selección" })

-- Ctrl + flecha derecha: saltar al inicio de la siguiente palabra (en insert)
vim.keymap.set("i", "<C-Right>", "<C-o>w", { desc = "Saltar palabra a la derecha" })
-- Ctrl + flecha izquierda: saltar al inicio de la palabra anterior (en insert)
vim.keymap.set("i", "<C-Left>", "<C-o>b", { desc = "Saltar palabra a la izquierda" })

-- Formatear código
vim.keymap.set({ "n", "v" }, "<C-A-f>", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Formatear archivo o selección" })

-- Mostrar atajos
vim.keymap.set("n", "<C-k>", function()
	require("which-key").show({ global = true })
end, { desc = "Mostrar todos los keymaps" })
