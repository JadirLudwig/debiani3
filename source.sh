# !/bin/bash

function main_menu {
opcao=0
until [ "$opcao" = "4"]; do
clear
echo
echo "Assistente para sources list Debian"
echo
echo 'opções'
echo '==========================='
echo
echo "[1] Sources list Debian Stable"
echo "[2] Sources list Debian Testing"
echo "[3] Sources list Debian Unstable"
echo "[4] Sair"
echo
echo -n "Enter: "
read opcao
echo ""
case $opcao in 
	
	1 ) S;;
	2 ) T;;
	3 ) U;;
	4 ) S;;
	* ) tput setf 4;echo "Erro! Entradas válidas - 1, 2, 3 ou 4";tput setf 4; 
esac
done
}
function S {
clear
echo 
echo "Alterando a source.list"
sleep 4
echo -n > /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#                   OFFICIAL DEBIAN REPOS                    " >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo "###### Debian Main Repos" >> /etc/apt/sources.list
echo "deb http://ftp.au.debian.org/debian/ stable main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://ftp.au.debian.org/debian/ stable main contrib non-free" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo "deb http://ftp.au.debian.org/debian/ stable-updates main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://ftp.au.debian.org/debian/ stable-updates main contrib non-free" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo "deb http://security.debian.org/ stable/updates main" >> /etc/apt/sources.list
echo "deb-src http://security.debian.org/ stable/updates main" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo "deb http://ftp.debian.org/debian stretch-backports main" >> /etc/apt/sources.list
echo "deb-src http://ftp.debian.org/debian stretch-backports main" >> /etc/apt/sources.list
sleep 4
echo "Sources list alterada para Stable main contrib non-free"
echo 
f_add_repo
}
function T {
clear
echo
echo "Alterando a source.list"
sleep 4
echo -n > /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#                   OFFICIAL DEBIAN REPOS                    " >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo "###### Debian Main Repos" >> /etc/apt/sources.list
echo "deb http://ftp.br.debian.org/debian/ testing main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://ftp.br.debian.org/debian/ testing main contrib non-free" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo "deb http://ftp.br.debian.org/debian/ testing-updates main contrib non-echo" >> /etc/apt/sources.list
echo "deb-src http://ftp.br.debian.org/debian/ testing-updates main contrib non-free" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo "deb http://security.debian.org/ testing/updates main" >> /etc/apt/sources.list
echo "deb-src http://security.debian.org/ testing/updates main" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
sleep 4
echo "Sources list alterada para Testing main contrib non-free"
echo
f_add_repo
}
function U {
controle=$'wait'
while [ "$controle" = "wait" ]; do
echo -n "Tem certeza disso? [s/n]" 
read resp
echo
if [ "$resp" = 's' ] || [ "$resp" = 'S' ];
then
	clear
	echo
	echo "Alterando a source.list"
	sleep 2
	echo -n > /etc/apt/sources.list
	echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
	echo "#                   OFFICIAL DEBIAN REPOS                    " >> /etc/apt/sources.list
	echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
	echo "#" >> /etc/apt/sources.list
	echo "###### Debian Main Repos" >> /etc/apt/sources.list
	echo "deb http://ftp.br.debian.org/debian/ unstable main contrib non-free" >> /etc/apt/sources.list
	echo "deb-src http://ftp.br.debian.org/debian/ unstable main contrib non-free" >> /etc/apt/sources.list
	echo "#" >> /etc/apt/sources.list
	sleep 4
	echo "Sources list alterada para Unstable main contrib non-free"
	echo
	f_add_repo
	controle=$'ok'
elif [ "$resp" = 'n' ] || [ "$resp" = 'N' ];
then
	echo "Saindo..."
	sleep 4
	exit
fi
done
}
function f_add_repo {

op=0
until [ "$op" = "4"]; do
clear
echo ""
echo "Assistente para sources list Debian"
echo
echo 'Instalar repositórios não oficiais'
echo '=================================='
echo
echo "[1] Repositório do Google Chrome"
echo "[2] Repositório do Mozila Firefox release/unstable"
echo "[3] Repositório do Spotify"
echo "[4] Repositório do Sublime Text"
echo "[5] Sair"
echo
echo -n "Enter: "
read op
echo ""
case $op in 
	
	1 ) GoogleChrome;;
	2 ) Firefox;;
	3 ) Spotify;;
	4 ) Sublime;;
	5 ) S;;
	* ) tput setf 4;echo "Erro! Entradas válidas - 1, 2, 3 ou 4";tput setf 4; 
esac
done
}
function GoogleChrome { 
clear
echo
echo "Alterando a source.list"
sleep 4
echo "#" >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#                      UNOFFICIAL  REPOS                       " >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo "###### 3rd Party Binary Repos" >> /etc/apt/sources.list
echo "###Google Chrome Browser" >> /etc/apt/sources.list
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
sleep 4
echo "Sources list alterada!"
sleep 4
echo
}
function Firefox {
clear
echo
controle=$'wait'
while [ "$controle" = "wait" ]; do
echo "Mozila Firefox release/unstable só é compativél com Debian Testing ou ainda se você estiver usando o Debian Unstable adicionar este repositório não é necessário!"
echo
echo "Tem certeza disso? [s/n]" 
read resp
echo
if [ "$resp" = 's' ] || [ "$resp" = 'S' ];
then
	clear
	echo
	echo "Alterando a source.list"
	sleep 2
	echo "#" >> /etc/apt/sources.list
	echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
	echo "#                      UNOFFICIAL  REPOS                       " >> /etc/apt/sources.list
	echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
	echo "#" >> /etc/apt/sources.list
	echo "###Mozila Firefox release/unstable" >> /etc/apt/sources.list
	echo "deb http://http.debian.net/debian unstable main" >> /etc/apt/sources.list
	echo "#" >> /etc/apt/sources.list
	sleep 4
	echo "Sources list alterada!"
	sleep 4
	echo
	controle=$'ok'
elif [ "$resp" = 'n' ] || [ "$resp" = 'N' ];
then
	echo "Saindo..."
	sleep 4
	exit
fi
done
}
function Spotify { 
clear
echo
echo "Alterando a source.list"
sleep 4
echo "#" >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#                      UNOFFICIAL  REPOS                       " >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo "###Spotify" >> /etc/apt/sources.list
echo "deb http://repository.spotify.com stable non-free" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
sleep 4
echo "Sources list alterada!"
sleep 4
echo
}
function Sublime { 
clear
echo
echo "Alterando a source.list"
sleep 4
echo "#" >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#                      UNOFFICIAL  REPOS                       " >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo "###Sublime Text" >> /etc/apt/sources.list
echo "deb https://download.sublimetext.com/ apt/stable/" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
sleep 4
echo "Sources list alterada!"
sleep 4
echo
}
function S {
clear
sleep 4
echo "Encerrando!" && sleep 4
exit
}
main_menu
