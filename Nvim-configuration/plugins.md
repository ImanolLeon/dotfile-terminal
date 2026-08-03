# Plugins y keymaps

##  Nvim-tree.lua -> explorador de archivos tipo árbol de carpetas a la izquierda

```lua
-- agregar a tus plugins
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup()
  end,
}
```
Lo activamos con:

```
:NvimTreeToggle
```

Asimismo vamos a crear un atajo de teclas(keymap) para poder abrirlo.
El comando es este:
```
Control + a 
```
Sirve tambien para ocultar la barra de administrador de archivos del panel de la izquierda , y le escribimos este comando
otra vez se vuelve a habilitar.
### Configuraciones de movimiento

1. Ir hacia la derecha(Entrar al archivo).

`Control+w h`

2. Ir a la izquierda(regresar a la navegación de carpetas)

`Control+w l`

Lo que hemos realizado en nuestra configuración es mas sencillo:
Cuando ejecutemos `Control + w` nos vamos a archivo , luego el mismo comando editamos el archivo.

3. Opciones de navegación 
* enter -> abrir archivo
* a -> crear archivo
* d -> eliminarArchivo
* r -> Renombrar
* q -> Cerrar el árbol 
 
## Bufferline.nvim 
Es un plugin muy popular que muestra tus buffers (o tabs) abiertos como una barra de pestañas en la parte superior de Neovim, similar a lo que verías en VS Code o Sublime Text.

link del repositorio de gitHub:https://github.com/akinsho/bufferline.nvim 

Nos movemos entre ventanas de archivos con el comando:

```
Control + a 
```
## Alpha 
Es la primera pantalla cuando escribes nvim al inicio y necesita cierto plugin extra de busqueda llamado 
`Telescope` 
## Telescope 
Es un buscado de archivos , palabras , etc.



