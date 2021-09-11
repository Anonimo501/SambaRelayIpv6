# SambaRelayIpv6

Canal de youtube  https://youtube.com/c/Anonimo501

Grupo en Telegram https://t.me/Pen7esting

Para el funcionamiento correcto de la herramiento, antes de usarla vamos a la ruta /etc/proxychains.conf y modificamos o quitamos socks4 127.0.0.1 9050 y colocamos socks4 127.0.0.1 1080.

opcion 1: instalamos Mitm6

opcion 2: instalamos impacket

Estos dos anteriores son importantes y se deben instalar antes de ejecutar el ataque.

opcion 3: Ejecutamos Mitm6, una vez ejecutado el script nos pedira ingresar el dominio Ejemplo: corp.local

opcion 4: Ejecutar Impacket, ingresaremos la ip victima y la ip de atacante, una vez hecho esto tendremos una consola interactiva donde debemos cada x tiempo ingresar el comando socks esperando una respuesta de AdminStatus - True.



# Sistema Operativo

El script se ejecuto sobre ParrotOS 4.11


![1](https://user-images.githubusercontent.com/67207446/132951983-11e833fe-0df9-4e04-920b-85c893ea3aca.png)


## Uso

git clone https://github.com/Anonimo501/SambaRelayIpv6.git

cd SambaRelayIpv6/

chmod +x smbrelay_ipv6.sh

./smbrelay_ipv6.sh


# Referencias

SecureAuth Corporation.https://github.com/SecureAuthCorp/impacket

fox-it. https://github.com/fox-it/mitm6.git
