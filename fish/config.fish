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


