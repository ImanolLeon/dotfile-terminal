# Personalización de windows powershell 
## Crear archivo profile 
El archivo `$PROFILE` en windows es una gran referencia a los `bashrc` `config.fish` en el shells del sistema UNIX(Linux) son archivos que manejan alias ,configuraciones de módulos , etc.

**IMPORTANTE**

Es muy comun ver el signo de `~` ,se usa para nombrar a la siguiente ruta `C:\Users\TuUsuario\`

### Crear archivo txt de personalización

```powershell
New-Item -Path $PROFILE -Type File -Force
```

1. Para ver la ruta :

```powershell
$PROFILE
``` 
Se ubica en documentos con el nombre de `powershell`.

2. Para modificarlo

```powershell
notepad $PROFILE
``` 
**No olvidar guardarlo cuando se modifique**

3. Para recargar sin cerrar la terminal 

```powershell
. $PROFILE
```

### Como crear alias:

```powershell
function NombreDelAlias { comando }
```
* **Importante la palabra reservada `function`**
* **Importante los espacios en las llaves**

Ejemplo: (Estamos creando un alias ejecutar un comando de conexión con hostinger)

```powershell
function ssh-hostinger { ssh -p 65002 -i 
"$env:USERPROFILE\.ssh\imanolClave"
 u268804017@217.15.169.25 }
```

# Descargando Starshipt
## forzando ubicación:
winget install --id Starship.Starship --force --location "C:\Users\imano\starship"

Verificamos que exista :
```powershell
dir C:\Users\imano\starship\starship.exe
```

Agregamos al path 

```powershell
$env:Path += ";C:\Users\imano\starship"
starship --version
```

Edita tu profile , si en caso no lo tenga crealo con : 

```powershell
New-Item -Path $PROFILE -Type File -Force
```

Ese comando crea tu %PROFILE una vez creado escribes ahi adentro con 
```powershell
notepad $PROFILE
```

y agregamos esta linea en el archivo $PROFILE
```powershell 
Invoke-Expression (&starship init powershell)
```

Recargamos el perfil con 
```powershell
. $PROFILE
```

Ahora creamos un archivo de personalización de nuestro promp en la misma ruta donde está nuestro starship.exe
para poder estar ordenado donde está para poder modificarlo fácilmente en el futuro

Ingresamos a la carpeta
```powershell
cd C:\Users\imano\starship
```

Creamos archivo de personalización
```powershell
New-Item -Path "starship.toml" -ItemType File -Force | Out-Null
```

Y lo abrimos para editarlo
```powershell
notepad starship.toml
```

Pegamos ahí nuestros estilos ubicados en la ruta `/dotfile-terminal/starship/starship.toml`.


Primero verficamos que exista nuestro archivo de personalización 
```powershell
Test-Path "C:\Users\imano\starship\starship.toml"
```

Y ahora probamos para ver si funciona 
```powershell
$env:STARSHIP_CONFIG = "C:\Users\imano\starship\starship.toml"

starship --version
```

si vemos que si funciona normal , lo aplicamos permanente 
```powershell
[Environment]::SetEnvironmentVariable("STARSHIP_CONFIG", "C:\Users\imano\starship\starship.toml", [EnvironmentVariableTarget]::User)
```

Verficicamos que se guardó 

```powershell
[Environment]::GetEnvironmentVariable("STARSHIP_CONFIG", "User") 
```

# Descarga eza
Eza es un `ls` pero con iconos muy personalizados.

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

# Agregar fastfetch
Descargamos fastfetch
```powershell
winget install fastfetch
```
y escribimos esto en nuestro archivo `$PROFILE`
```powershell
#Configuración fasfetch
# Minimal profile: UTF‑8 + Oh My Posh (if installed) + Fastfetch with explicit config path
try {
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding = [System.Text.UTF8Encoding]::new($false)
    chcp 65001 > $null
} catch {}

Clear-Host

# Force Fastfetch to use YOUR config every time (bypass path confusion)
if (Get-Command fastfetch -ErrorAction SilentlyContinue) {
   fastfetch -c "C:/Users/imano/.config/fastfetch/config.jsonc"
}
```
Lo que hace esto es activar fastfetch cada vez que se abre una terminal en powershell.

Fijate muy bien en la ruta que tienes en el archivo `config.json`
```powershell
"source": "/home/imanol/.config/fastfetch/ascii.txt",
```
Recordar que cambia en windows y ubuntu.

**RECORDAR**

Que debes crear un archivo `.config/fastfecht/asci.txt` y `.config/fastfecht/config.json` en la raíz del usuario para que ahí estén los archivos y los actualizas como está en la carpeta de este repositorio.


# Configuración de visual studio code
```
{
    "editor.fontFamily": "CaskaydiaCove Nerd Font Mono",
    "editor.fontSize": 13.5,
    "workbench.secondarySideBar.defaultVisibility": "hidden",
    "workbench.colorTheme": "One Monokai",

    "files.autoSave": "afterDelay",
    "editor.guides.bracketPairs": true,
    "workbench.editor.empty.hint": "hidden",
    "chat.disableAIFeatures": true,
    "workbench.editor.enablePreview": false,
    "workbench.iconTheme": "file-icons",
    "terminal.integrated.shellIntegration.enabled": false
}

```

Esto sirve para `Starshipt` para que se vea bien en la terminal del editor de código.



