# mi Dotfile de mi terminal
### 1. Starhip 

En el archivo *starship.toml* manejo el formato y los iconos que tiene mi prompt :

<img width="367" height="66" alt="image" src="https://github.com/user-attachments/assets/9f59b0c9-8df3-4af1-a7b7-bbae2e634035" />

### 3. eza
Esta carpeta maneja los iconos cuando ejecutamos un `ls`, si observamos en nuestra carpeta `config.fish` se le llama con 
un alias.
```
alias ls='eza --icons'
```
Su archivo configuración se encuentra en la carpeta `eza/theme.yml` a partir de la linea 104 estilizamos específicamente cada tipo de archivo.

### 3. Zellij 
Zellij es un multiplexor de Terminal que permite poder dividir en una sola venta varios paneles o tabs.

<img width="1903" height="963" alt="image" src="https://github.com/user-attachments/assets/8d5d4734-ca5b-4501-8f2c-d21cf1fa4f03" />

Su archivo de configuración viene en la carpeta `zellij/config.kdl` para el manejo de atajos y en `zellij/config.kdl.bak` se maneja lo visual.

### 4. ranger 
Es un administrador de archivos para la terminal. Es una alternativa a exploradores gráficos como el Explorador de Windows o Finder, pero funciona completamente desde la consola.

<img width="1660" height="828" alt="image" src="https://github.com/user-attachments/assets/8ab9e09f-a522-4241-a64e-c44c58ae6128" />

Su archivo de configuración se encuentra en `ranger/rc.conf` 

### Neovim 
Es un editor de texto para la terminal, derivado de Vim, diseñado para ser más moderno, extensible y fácil de integrar con herramientas actuales.
<img width="1885" height="982" alt="image" src="https://github.com/user-attachments/assets/1be9d954-ba54-4c43-8c0d-84735700bcf6" />

Su archivo de configuración se encuentra en `Nvim-configuracion/nvim` 
1. `nimv/lua/plugins` Diferentes funcionalidades como saltos de linea,theme,formato,etc.
2. `nimv/lua/config` Configuracion de atajos y opciones personalizadas.
