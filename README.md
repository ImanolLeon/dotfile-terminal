# mi Dogfile de mi terminal
<img width="1902" height="1011" alt="image" src="https://github.com/user-attachments/assets/ff23715f-80ed-4a2f-a150-c0200198b8f8" />

### 1. Carpeta fish
*config.fish* 

```
if status is-interactive
# Commands to run in interactive sessions can go here

#Alias para poder ver iconos 
alias ls='eza --icons'
#z para evitar usar --> cd
zoxide init fish | source

#Ir a principal
alias principal='cd /mnt/c/Users/imano'
#Llamar a archivo con información acerca de migraciones
alias migracionesPhp='/mnt/c/Users/imano/Documents/utils/MigrationsPhp.sh'

#prompt
starship init fish | source

end
```

### 2. Starhip 

En el archivo *starship.toml* manejo el formato y los iconos que tiene mi prompt :

<img width="367" height="66" alt="image" src="https://github.com/user-attachments/assets/9f59b0c9-8df3-4af1-a7b7-bbae2e634035" />

### 3. eza
Esta carpeta maneja los iconos cuando ejecutamos un ls, si observamos en nuestra carpeta *config.fish* se le llama con 
un alias.

*theme.yml*

* Este archivo a partir de la linea 104 se ha realizado una implementación de estilos para extenciones de archivos en
  especifico con sus respectivos íconos.

### 3. Zellij 
Zellij es un multiplexor de Terminal que permite poder dividir en una sola venta varios paneles.

<img width="1903" height="963" alt="image" src="https://github.com/user-attachments/assets/8d5d4734-ca5b-4501-8f2c-d21cf1fa4f03" />

Dejar el archivo que viene por defecto.

