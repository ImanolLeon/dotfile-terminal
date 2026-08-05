---------Descarga Starship

Descargando forzando ubicación :
-> winget install --id Starship.Starship --force --location "C:\Users\imano\starship"

Verificamos que exista :

-> dir C:\Users\imano\starship\starship.exe

Agregamos al path 

$env:Path += ";C:\Users\imano\starship"
starship --version

Edita tu profile , si en caso no lo tenga crealo con : 

-> New-Item -Path $PROFILE -Type File -Force

Ese comando crea tu %PROFILE una vez creado escribes ahi adentro con 

-> notepad $PROFILE

y agregamos esta linea en el archivo $PROFILE
 
-> Invoke-Expression (&starship init powershell)

Recargamos el perfil con 

-> . $PROFILE

Ahora creamos un archivo de personalización de nuestro promp en la misma ruta donde está nuestro starship.exe
para poder estar ordenado donde está para poder modificarlo fácilmente en el futuro

Ingresamos a la carpeta

-> cd C:\Users\imano\starship

Creamos archivo de personalización

-> New-Item -Path "starship.toml" -ItemType File -Force | Out-Null

Y lo abrimos para editarlo

-> notepad starship.toml

Pegamos ahí nuestros estilos.
Luego conectamos nuestros estilos a nuestro starship

Primero verficamos que exista nuestro archivo de personalización 

-> Test-Path "C:\Users\imano\starship\starship.toml"

Y ahora probamos para ver si funciona 

-> $env:STARSHIP_CONFIG = "C:\Users\imano\starship\starship.toml"

-> starship --version

si vemos que si funciona normal , lo aplicamos permanente 

-> [Environment]::SetEnvironmentVariable("STARSHIP_CONFIG", "C:\Users\imano\starship\starship.toml", [EnvironmentVariableTarget]::User)

Verficicamos que se guardó 

-> [Environment]::GetEnvironmentVariable("STARSHIP_CONFIG", "User") 


