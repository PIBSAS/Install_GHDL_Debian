# Function to check for administrative privileges and restart as admin if necessary
function Ensure-Admin {
    if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
        Write-Host "El script no tiene privilegios de administrador. Reiniciando como administrador..."
        Start-Process powershell "-File `"$($MyInvocation.MyCommand.Path)`"" -Verb RunAs
        exit
    }
}

# Ensure the script is running with administrative privileges
Ensure-Admin

Write-Host "Script de instalacion para VHDL aun debemos agregar las variables de entorno!!!"

Write-Host "Cambiar al directorio de descargas"
cd $HOME\Downloads\

Write-Host "Descargar y extraer GHDL"
wget https://github.com/ghdl/ghdl/releases/download/v4.1.0/ghdl-UCRT64.zip -OutFile ghdl-UCRT64.zip
Expand-Archive ghdl*.zip -DestinationPath C:\
Remove-Item ghdl-UCRT64.zip
cd ..

Write-Host "Descargar y extraer Digital"
cd $HOME\Downloads\
wget https://github.com/hneemann/Digital/releases/latest/download/Digital.zip -OutFile Digital.zip
Expand-Archive Di*.zip -DestinationPath C:\
Remove-Item Digital.zip
cd ..

Write-Host "Descargar y extraer GTKWave"
cd $HOME\Downloads\
Start-BitsTransfer -Source https://sourceforge.net/projects/gtkwave/files/gtkwave-3.3.100-bin-win64/gtkwave-3.3.100-bin-win64.zip/download -Destination gtkwave.zip
Expand-Archive gtk*.zip -DestinationPath C:\
Remove-Item gtk*.zip
Rename-Item -Path "C:\gtkwave64" -NewName "gtkwave"
cd ..

Write-Host "Instalar Java 8 y Notepad++ usando winget"
winget install "Java 8" --silent
winget install "notepad++" --silent
