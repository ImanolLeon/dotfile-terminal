# Descarga eza 

Primero descargamos un paquete (Scoop) que ayude a descargar eza

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

luego 

```powershell
irm get.scoop.sh | iex
```

Luego de eso cerramos la terminal y descargamos eza

```powershell
scoop install eza
```

y en nuestro archivo `$PROFILE`  agregamos estas lineas


```powershell
#Para deshabilitar la herramienta que usa por defecto powershell
Remove-Item Alias:ls -Force -ErrorAction SilentlyContinue
#Para listar con iconos
function ls { eza --icons }
```




