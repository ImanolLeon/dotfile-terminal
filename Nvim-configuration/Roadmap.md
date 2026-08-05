# Pasos para descarga WSL

1. Primero como se desinstala 
Primeramente listamos las distros que tenemos en nuestra maquina (Estamos usando poweshell)
```
wsl --list --verbose
```

Salida esperada:

![alt text](image.png)

Luego de esto procedemos a borrarlo 

```
 wsl --unregister Ubuntu
```


2. Ahora lo descargamos 
```
wsl --install -d Ubuntu
```

3. Una vez descargado WSL procedemos a colocar nuestro usernme , asi como nuestro password 
4. Luego de eso procedemos a descargar nuestra shell de fish 

Primero actualizamos todo 
```
sudo apt update
```
Luego descargamos fish

```
sudo apt install fish
```
 
 luego de descargar fish la activamos como nuestra shell por defecto 

 ```
 chsh -s $(which fish)
 ```

 cerramos la terminal y la volvemos a abrir

 --> Como deberia aparecer

 ![alt text](image-1.png)

5. Descargamos Homebrew (brew)

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

 y luego lo agregamos al path para que pueda funcionar, esto lo realizamos entrando a su configuración base que se encuentra en `~/.config/fish/conf.fish` agregamos la linea 
 ```
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.config/fish/config.fish
 ```

Suele cambiar bastante con la shell que uses, en este caso estamos usando fish.

 El archivo completo quedaria asi :
 ```
 if status is-interactive
    # Commands to run in interactive sessions can go here
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

end
 ```

 6. Instalamos npm con brew

 ```
 brew install node
 ```

 Asimismo tambie descargamos pnpm 

 ```
 brew install pnpm
 ```

Luego seguimos con neovim

```
brew install neovim
```

Descargamos las herramientas de C
```
sudo apt install build-essential -y
```

Seguimos con git , curl y unzip
- curls.Es una herramienta de línea de comandos para transferir datos hacia o desde un servidor, usando protocolos como HTTP, HTTPS, FTP, entre otros.
- unzip.Es una herramienta para descomprimir archivos .zip. Muchos instaladores (como el de Deno que usaste) descargan un paquete comprimido en formato zip y necesitan unzip para extraer los archivos reales del binario
```
sudo apt install git curl unzip
```
Descargar xclip
Linux no tiene un solo portapapeles del sistema "de fábrica" accesible fácilmente desde la terminal, a diferencia de Windows o macOS.es por eso que neovim  necesita un programa intermediario para "hablar" con ese portapapeles del sistema operativo.
```
sudo apt install xclip
```
Además debemos descargar yarn 

```
npm install -g yarn
```

También descargamos una herramienta para buscar archivos 
```bash
sudo apt install fd-find
```
Si es que da error el siguiente error:

```
fd: Executable not found
```

Lo que debemos hacer es verificar si realmente se descargó.
```
ls -l ~/.local/bin/fd
```
Salida esperada 

```
imanol@ImanolPc ~> ls -l ~/.local/bin/fd
lrwxrwxrwx 1 imanol imanol 15 Aug  4 17:39 /home/imanol/.local/bin/fd@ -> /usr/bin/fdfind
```
Si eso no sale entonces deberiamos descargarlo otra vez.
Si la salida es la esperada entonces lo que nos queda es confirmar que `~/.local/bin` esté en tu PATH

*¿Qué es Path?*

Es una variable de entorno que se ve asi :

```
imanol@ImanolPc ~> echo $PATH
/home/linuxbrew/.linuxbrew/bin
/home/linuxbrew/.linuxbrew/sbin
/usr/local/sbin
/usr/local/bin
/usr/sbin
/usr/bin
/sbin
/bin
/usr/games
/usr/local/games
/usr/lib/wsl/lib
/mnt/c/Program Files/Common Files/Oracle/Java/javapath
/mnt/c/Windows/system32
/mnt/c/Windows
/mnt/c/Windows/System32/Wbem
/mnt/c/Windows/System32/WindowsPowerShell/v1.0/
/mnt/c/Windows/System32/OpenSSH/
/mnt/c/Program Files/nodejs/
/mnt/c/Program Files/Git/cmd
/mnt/c/composer
/mnt/c/Users/imano/AppData/Local/Programs/Python/Python313/Scripts/
/mnt/c/Users/imano/AppData/Local/Programs/Python/Python313/
/mnt/c/Users/imano/AppData/Local/Microsoft/WindowsApps
/mnt/c/Users/imano/AppData/Local/Programs/Microsoft VS Code/bin
/mnt/c/Users/imano/AppData/Roaming/npm
/mnt/c/sqlite/sqlite-tools-win-x64-3510000
/mnt/c/Program Files/MongoDB/Server/8.2/bin
/mnt/c/Program Files/Git/bin
/mnt/c/Users/imano/AppData/Local/Microsoft/WinGet/Packages/lsd-rs.lsd_Microsoft.Winget.Source_8wekyb3d8bbwe/lsd-v1.2.0-x86_64-pc-windows-msvc
/mnt/c/php
/mnt/c/Users/imano/AppData/Roaming/Composer/vendor/bin
/mnt/c/Users/imano/.bun/bin
/mnt/c/Users/imano/AppData/Local/Microsoft/WinGet/Packages/Starship.Starship_Microsoft.Winget.Source_8wekyb3d8bbwe
/mnt/c/Users/imano/starship
```

Como te das cuenta no se encuentra la ruta de 

```
/home/imanol/.local/bin
```
Para poder añadir una ruta al path depende mucho de nuestro $SHELL 

--- En fish se hace de la siguiente manera.

```
fish_add_path ~/.local/bin
```
Luego verificamos si se agregó al $PATH

```
imanol@ImanolPc ~> echo $PATH
/home/imanol/.local/bin <--- Se añadió
/home/linuxbrew/.linuxbrew/bin
/home/linuxbrew/.linuxbrew/sbin
/usr/local/sbin
/usr/local/bin
/usr/sbin
/usr/bin
/sbin
/bin
/usr/games
/usr/local/games
/usr/lib/wsl/lib
/mnt/c/Program Files/Common Files/Oracle/Java/javapath
/mnt/c/Windows/system32
/mnt/c/Windows
/mnt/c/Windows/System32/Wbem
/mnt/c/Windows/System32/WindowsPowerShell/v1.0/
/mnt/c/Windows/System32/OpenSSH/
/mnt/c/Program Files/nodejs/
/mnt/c/Program Files/Git/cmd
/mnt/c/composer
/mnt/c/Users/imano/AppData/Local/Programs/Python/Python313/Scripts/
/mnt/c/Users/imano/AppData/Local/Programs/Python/Python313/
/mnt/c/Users/imano/AppData/Local/Microsoft/WindowsApps
/mnt/c/Users/imano/AppData/Local/Programs/Microsoft VS Code/bin
/mnt/c/Users/imano/AppData/Roaming/npm
/mnt/c/sqlite/sqlite-tools-win-x64-3510000
/mnt/c/Program Files/MongoDB/Server/8.2/bin
/mnt/c/Program Files/Git/bin
/mnt/c/Users/imano/AppData/Local/Microsoft/WinGet/Packages/lsd-rs.lsd_Microsoft.Winget.Source_8wekyb3d8bbwe/lsd-v1.2.0-x86_64-pc-windows-msvc
/mnt/c/php
/mnt/c/Users/imano/AppData/Roaming/Composer/vendor/bin
/mnt/c/Users/imano/.bun/bin
/mnt/c/Users/imano/AppData/Local/Microsoft/WinGet/Packages/Starship.Starship_Microsoft.Winget.Source_8wekyb3d8bbwe
/mnt/c/Users/imano/starship
```
## ¿Qué es ~/.local?

Es una carpeta que sigue una convención estándar en Linux (viene del XDG Base Directory Specification)
para que cada usuario tenga su propio **espacio de programas y archivos** , separado de las
carpetas del sistema como `/usr/bin` o `/usr/local/bin` (que requieren sudo para tocarlas porque son
compartidas por todos los usuarios de la máquina).

Dentro de `~/.local` normalmente hay:

```
~/.local/bin/       → ejecutables/scripts PERSONALES TUYOS
~/.local/share/      → datos de programas (ahí vive el config de plugins de Neovim, por ejemplo)
~/.local/lib/         → librerías instaladas para tu usuario
~/.local/state/       → estado de aplicaciones (logs, historial, etc.)
```

## ¿Por qué existe ~/.local/bin específicamente? 

Es el lugar "oficial" para que tú, como usuario normal, sin necesidad de sudo, pongas:

1. Scripts propios que escribas.
2. Enlaces simbólicos (como el que hiciste con fd).
3. Programas instalados por herramientas como pip install --user, cargo install, npm install -g (con configuración de usuario), etc.

La idea de `~/.local/bin` es que no necesites permisos de administrador para tener tus 
propios comandos disponibles, y que no mezcles tus cosas personales con los programas del 
sistema que gestiona apt.

## Conclusión 

### `~/.local/bin`
Aquí van :

1. Scripts que tú escribes (~/.local/bin)
2. Enlaces simbólicos que tú creas
3. Programas instalados con herramientas que instalan "solo para ti" (pip install --user, por ejemplo)
4. Datos/configuración de apps que solo te afectan a ti (~/.local/share)

### `/usr/local/bin` 

Esta es la carpeta grande, del sistema operativo en sí, gestionada principalmente
por el gestor de paquetes (apt, pacman, etc.). Ahí vive casi todo lo que instalas con sudo:

1. lo gestiona el sistema de paquetes (apt install algo pone ahí el binario)



6. Configuraciones de Neovim
Solamente basta con mover la carpeta de nvim de nuestro repositorio a la carpeta de configuración de nuestro home que es `~/.config` 
 
```
nvim
```

Y se pondrá a descargar todos los plugins.




-----------------------------------------------------------------------------------------
# Después de descargar neovim
Después de ejecutar neovim es necesario recargar las dependencias de npm debido a que siempre tienen bugs , es cuestión de seguirestos pasos:

Nos dirigimos a la carpeta
```
cd ~/.local/share/nvim/lazy/markdown-preview.nvim/app
```
Luego borramos las dependencias

```
rm -rf node_modules package-lock.json
```

y por ultimo las descargamos 
```
npm install
```
Una vez acabado eso nos dará un error de versión y lo solucionamos yendo a la siguiente carpeta 
```
cd ~/.local/share/nvim/lazy/markdown-preview.nvim
```
Después regresamos a la version donde no causaba conflicto

```
git checkout app/yarn.lock
```
7. Estrcutura básica para entender la estrcutura de los modulos en lua

```lua
return {
  "windwp/nvim-autopairs",  -- [1] el plugin (repositorio de GitHub)
  event = "InsertEnter",     -- [2] cuándo se carga
  opts = {},                 -- [3] opciones de configuración
  config = function(_, opts) -- [4] función que se ejecuta al cargar
    ...
  end,
}
```

8. Descargamos Ranger 

```
sudo apt install ranger
```

Por defecto, ranger usa la variable de entorno $EDITOR para decidir qué editor abrir
Es por eso que optamos por cambiar la variable de entorno $EDITOR para que use
nvim en lugar de nano con el siguiente comando:

```
set -Ux EDITOR nvim
```
Para salir de ranger solemos usar el comanod `q` 

9. Descargamos zellij

```
brew install zellij
```

Para saber personalizar zellij debemos tener esto en cuenta
* text_unselected / text_selected -> Texto normal / texto de la pestaña activa
* ribbon_selected / ribbon_unselected -> La "cinta" de pestañas arriba (activa/inactiva)
* frame_selected -> El borde del panel activo
* frame_highligt -> Borde resaltado (ej: cuando movés un panel)
* exit_code_success / exit_code_error -> Color cuando un comando termina bien/mal
* multiplayer_user_colors -> Colores para sesiones compartidas con varios usuarios

---------------------------------------------------------------------------------- 
Conectarse con Github con el protocolo de seguridad ssh

Lo primero es coloca nuestro nombre y correo globalmente , con esta sintaxis

```
git config --global user.name "Tu Nombre"
git config --global user.email "tu_correo@ejemplo.com"
```

y creamos nuestra clave ssh 
```
ssh-keygen -t ed25519 -f ~/.ssh/ClaveImanol
```

*importante: no colocar agente*

Después agregamos nuestra clave a nuestro .gitconfig con este comando:

```
git config --global core.sshCommand "ssh -i ~/.ssh/ClaveImanol"
```

y desde ese momento nos pedirá contraseña cada vez que hagamos pull , push , etc.

(No olvidar que debemos copiar la clave.pub en nuestro github)








