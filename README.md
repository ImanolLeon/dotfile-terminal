
#  Mis Dotfile

Este repositorio reúne la configuración de las herramientas que utilizo diariamente para trabajar en la terminal. El objetivo es disponer de un entorno rápido, organizado y altamente personalizable para desarrollo y administración de sistemas.

## Herramientas incluidas

* 🐟 Fish Shell
* ⭐ Starship
* 📂 eza
* 🖥️ Zellij
* 📁 Ranger
* 💻 Neovim

---

## 1. Fish Shell

Fish es el *shell* que utilizo como reemplazo de Bash. Desde su archivo de configuración defino alias, variables de entorno, funciones personalizadas e inicializo las herramientas que uso diariamente.

Su archivo principal de configuración se encuentra en:

```text
config.fish
```

Aquí también se cargan herramientas como **Starship**, **eza**, **Atuin**, entre otras.

---

## 2. Starship

Starship es el *prompt* que utilizo para personalizar la apariencia de la terminal. Desde su archivo de configuración modifico el formato, los colores, los módulos y los iconos que aparecen en el prompt.

En el archivo **starship.toml** manejo toda la configuración del prompt.

<img width="367" height="66" alt="image" src="https://github.com/user-attachments/assets/9f59b0c9-8df3-4af1-a7b7-bbae2e634035" />

---

## 3. eza

`eza` es un reemplazo moderno del comando `ls`, permitiendo mostrar iconos, colores e información adicional sobre archivos y directorios.

En mi configuración reemplazo `ls` mediante un alias definido en `config.fish`:

```fish
alias ls='eza --icons'
```

La personalización de los iconos y colores se encuentra en:

```text
eza/theme.yml
```

A partir de la línea **104** se define el estilo para los distintos tipos de archivos y directorios.

---

## 4. Zellij

Zellij es un multiplexor de terminal que permite trabajar con múltiples paneles y pestañas dentro de una misma ventana, facilitando la organización del espacio de trabajo.

<img width="1903" height="963" alt="image" src="https://github.com/user-attachments/assets/8d5d4734-ca5b-4501-8f2c-d21cf1fa4f03" />

Los archivos de configuración se encuentran en:

* `zellij/config.kdl` → Configuración de atajos y comportamiento.
* `zellij/config.kdl.bak` → Personalización visual.

---

## 5. Ranger

Ranger es un administrador de archivos para la terminal. Es una alternativa a exploradores gráficos como el Explorador de Windows o Finder, pero funciona completamente desde la consola.

Lo utilizo para navegar rápidamente entre directorios, copiar, mover y renombrar archivos sin abandonar la terminal.

<img width="1660" height="828" alt="image" src="https://github.com/user-attachments/assets/8ab9e09f-a522-4241-a64e-c44c58ae6128" />

Su configuración se encuentra en:

```text
ranger/rc.conf
```

---

## 6. Neovim

Neovim es un editor de texto para la terminal, derivado de Vim, diseñado para ser más moderno, rápido y fácil de extender mediante plugins.

<img width="1885" height="982" alt="image" src="https://github.com/user-attachments/assets/1be9d954-ba54-4c43-8c0d-84735700bcf6" />

Toda mi configuración se encuentra en:

```text
Nvim-configuracion/nvim
```

La estructura principal está organizada de la siguiente manera:

### `nvim/lua/plugins`

Contiene la configuración de los diferentes plugins que amplían las funcionalidades de Neovim, como por ejemplo:

* Gestor de plugins.
* Tema.
* Explorador de archivos.
* Treesitter.
* LSP.
* Autocompletado.
* Barra de estado.
* Formateadores.

### `nvim/lua/config`

Contiene la configuración base del editor:

* Atajos de teclado.
* Opciones generales.
* Configuración personalizada.
* Comportamiento del editor.
