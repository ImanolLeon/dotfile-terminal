if status is-interactive
# Commands to run in interactive sessions can go here

#Alias para poder ver iconos 
alias ls='eza --icons'
#z para evitar usar --> cd
zoxide init fish | source

#Ir a principal
alias principal='cd /mnt/c/Users/imano'
#Llamar a archivo con información acerca de migraciones
alias migracionesPhp='/home/imano/Documentos/utils/MigrationsPhp.sh'

#llamar a credenciales de proyecto nhl
alias credenciales='cat /home/imano/Documentos/utils/credenciales.txt'

#llamar a hostinger
alias hostinger='cat /home/imano/Documentos/utils/hostinger.txt'

#llamar a powerShell
alias powershell='/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe'
#prompt
starship init fish | source

end


