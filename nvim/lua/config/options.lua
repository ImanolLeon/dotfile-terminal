-- Activar numeración
vim.opt.number = true

-- Fuerza que siempre se vea el cursor grueso
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:block,r-cr-o:block"

-- Que las flechas izquierda/derecha suban/bajen de línea
vim.opt.whichwrap = "b,s,<,>,[,]"

-- Indentación
vim.opt.expandtab = true      -- usa espacios en vez de tabs
vim.opt.shiftwidth = 2        -- espacios por nivel de indentación
vim.opt.tabstop = 2           -- ancho visual de un tab
--vim.opt.softtabstop = 2
--vim.opt.smartindent = true
--vim.opt.autoindent = true
