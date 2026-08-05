# mi Dotfile de mi terminal


### 1. Starhip 

En el archivo *starship.toml* manejo el formato y los iconos que tiene mi prompt :

<img width="367" height="66" alt="image" src="https://github.com/user-attachments/assets/9f59b0c9-8df3-4af1-a7b7-bbae2e634035" />

### 3. eza
Esta carpeta maneja los iconos cuando ejecutamos un ls, si observamos en nuestra carpeta `config.fish` se le llama con 
un alias.
```
alias ls='eza --icons'
```
Su archivo configuración se encuentra en la carpeta `eza/theme.yml` a partir de la linea 104 estilizamos específicamente cada tipo de archivo.

### 3. Zellij 
Zellij es un multiplexor de Terminal que permite poder dividir en una sola venta varios paneles.

<img width="1903" height="963" alt="image" src="https://github.com/user-attachments/assets/8d5d4734-ca5b-4501-8f2c-d21cf1fa4f03" />

Su archivo de configuración viene en la carpeta `zellij/config.kdl` para el manejo de atajos y en `zellij/config.kdl.bak` se maneja lo visual.

