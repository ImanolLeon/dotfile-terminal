require("config.lazy")

-- Activar numeración.
vim.opt.number = true

-- Copiar seleccionado al portapapeles del sistema con Ctrl-C
vim.keymap.set("v", "<C-c>", '"+y', { silent = true })

-- Selección de texto tipo editor normal (Ctrl+Shift+Flecha)
vim.keymap.set({ "n", "i" }, "<C-S-Right>", "<Esc>v<C-Right>", { silent = true })
vim.keymap.set({ "n", "i" }, "<C-S-Left>", "<Esc>v<C-Left>", { silent = true })
vim.keymap.set("v", "<C-S-Right>", "<C-Right>", { silent = true })
vim.keymap.set("v", "<C-S-Left>", "<C-Left>", { silent = true })

-- Fuerza que siempre se vea el cursor grueso
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:block,r-cr-o:block"
-- Abrir administrador de archivos en forma de árbol
vim.keymap.set("n", "<C-a>", ":NvimTreeToggle<CR>")

-- atajos para moverse entre archivos
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")

-- Que las flechas izquierda/derecha suban/bajen de línea
vim.opt.whichwrap = "b,s,<,>,[,]"

vim.keymap.set({ "n", "v" }, "<C-S-l>", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Format file/selection" })
