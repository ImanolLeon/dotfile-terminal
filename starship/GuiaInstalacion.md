# Guia de instalación para starship

Starship es un prompt universal para la terminal. Su función es reemplazar el indicador de comandos (prompt) de tu shell por uno más informativo, personalizable y rápido.

**Es OBLIGATORIO una nerd font**

Se descarga con homebrew

```
brew install starship
```

Verificamos el archivo de configuración de nuestra SHELL. 

Las shell y el nombre de sus archivos de configuración.
1. Bash -> bashrc
2. Zsh -> zshrc
3. Fish -> config.fish

Modificamos el archivo de configuración en mi caso `~/.config/fish/config.fish`


```fish
# Inicia cuando se cargue la shell
starship init fish | source
```
Tambien le agregamos una linea que especifique donde debe leer su configuración.

```
#Especificamos donde estará su archivo configuración
set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
```

Como debe quedar el archivo de configuración `~/.config/fish/config.fish`
```
# Inicia cuando se cargue la shell
starship init fish | source
# Especificamos donde estará su archivo configuración
set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
```

y recargamos lo cambios con 

```
source ~/.config/fish/config.fish
```

## Personalización

Copiamos el archivo de configuración que está en este repositorio `dotfile-terminal/starship`
a tu configuración local `~/.config`

```bash
cp -r /home/USER/dotfile-terminal/starship ~/.config/
```

y actualiza al instante.


