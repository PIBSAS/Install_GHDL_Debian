

# Install_GHDL_Ubintu

````bash
wsl --install
````
Actualizamos e instalamos dependencias:
````bash
sudo apt update
sudo apt install -y wget zlib1g-dev gnat-10 unzip openjdk-19-jre-headless
````
````bash
wget https://github.com/ghdl/ghdl/releases/download/v4.1.0/ghdl-gha-ubuntu-22.04-gcc.tgz -P ghdl/
cd ghdl
tar -xzvf ghdl*.tgz
rm g*tgz
````
Agregamos GHDL a .bashrc:
````bash
cd
nano .bashrc
````
Al final del archivo agregamos la linea:
````bash
export PATH=$PATH:$HOME/ghdl/bin/
````
# Obtenemos Digital un fork de LogiSim:
````bash
cd
wget -c https://github.com/hneemann/Digital/releases/latest/download/Digital.zip
rm Di*zip
````


# Install_GHDL_Debian

````bash
wsl --install debian
````

````bash
sudo nano /etc/apt/sources.list
deb http://ftp.de.debian.org/debian bullseye main 
Ctrl + S, Ctrl + X.
````

````bash
sudo apt update
sudo apt install -y zlib1g-dev gnat-10
````

````bash
wget https://github.com/ghdl/ghdl/releases/download/v4.1.0/ghdl-gha-ubuntu-22.04-gcc.tgz
tar -xzvf ghdl*.tgz
````
