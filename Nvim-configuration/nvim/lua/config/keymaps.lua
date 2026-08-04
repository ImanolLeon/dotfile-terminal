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
vim.keymap.set("n", "<S-f>", builtin.find_files, { desc = "Buscar archivos" })

-- Buscar palabras en el archivo activo (Shift+S)
vim.keymap.set("n", "<S-s>", builtin.current_buffer_fuzzy_find, { desc = "Buscar palabras en pestaña abierta" })

--indentar selección con tab
vim.keymap.set("v", "<Tab>", ">gv", { silent = true, desc = "Indentar selección" })



