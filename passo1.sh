# !/bin/bash

# Script auxiliar para Debian I3wm --versão 1.0



#____________________________________________________________________________________________

function Stable {

clear
echo 
echo "Alterando a source.list para Stable"
echo


f_pausa


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
echo
echo "Sources list alterada para Stable main contrib non-free"
echo 


f_pausa

}

#____________________________________________________________________________________________

function Testing {

clear
echo
echo "Alterando a source.list para Testing"
echo

f_pausa


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
echo
echo "Sources list alterada para Testing main contrib non-free"
echo


f_pausa

}

#____________________________________________________________________________________________

function Unstable {

clear
echo
echo "Alterando a source.list para Unstable"
echo


f_pausa


echo -n > /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#                   OFFICIAL DEBIAN REPOS                    " >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo "###### Debian Main Repos" >> /etc/apt/sources.list
echo "deb http://ftp.br.debian.org/debian/ unstable main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://ftp.br.debian.org/debian/ unstable main contrib non-free" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo
echo "Sources list alterada para Unstable main contrib non-free"
echo


f_pausa

}

#______________________________________________________________________________________________

function GoogleChrome { 
clear
echo
echo "Adicionando Google Chrome a source.list"
echo


f_pausa


echo "#" >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#                      UNOFFICIAL  REPOS                       " >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo "###### 3rd Party Binary Repos" >> /etc/apt/sources.list
echo "###Google Chrome Browser" >> /etc/apt/sources.list
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo
echo "Sources list alterada!"
echo


f_pausa

}

#_____________________________________________________________________________________________

function Firefox {

clear
echo
echo "Adicionando Firefox a source.list"
echo


f_pausa


echo "#" >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#                      UNOFFICIAL  REPOS                       " >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo "###Mozila Firefox release/unstable" >> /etc/apt/sources.list
echo "deb http://http.debian.net/debian unstable main" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo
echo "Sources list alterada!"
echo


f_pausa

}

#______________________________________________________________________________________________

function Spotify { 
clear
echo
echo "Adicionando Spotify a source.list"
echo


f_pausa


echo "#" >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#                      UNOFFICIAL  REPOS                       " >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo "###Spotify" >> /etc/apt/sources.list
echo "deb http://repository.spotify.com stable non-free" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo
echo "Sources list alterada!"
echo


f_pausa

}

#________________________________________________________________________________________________

function Sublime { 
clear
echo
echo "Adicionando o Sublime a source.list"
echo


f_pausa


echo "#" >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#                      UNOFFICIAL  REPOS                       " >> /etc/apt/sources.list
echo "#------------------------------------------------------------------------------#" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo "###Sublime Text" >> /etc/apt/sources.list
echo "deb https://download.sublimetext.com/ apt/stable/" >> /etc/apt/sources.list
echo "#" >> /etc/apt/sources.list
echo
echo "Sources list alterada!"
echo


f_pausa

}

#____________________________________________________________________________________________

function Update { 
clear
echo
echo "Atualizando com Update"
echo


f_pausa


apt update
echo "ok"


f_pausa

}

#____________________________________________________________________________________________

function Full-upgrade { 
clear
echo
echo "Atualizando com full-upgrade"
echo


f_pausa


apt full-upgrade
echo
echo "OK"
echo


f_pausa

}

#____________________________________________________________________________________________

function instalar { 
clear
echo
echo "Instalando I3wm, I3blocks, LightDM e Thunar"
echo


f_pausa


apt install i3 i3blocks lightdm thunar -y
echo


f_pausa

}

#____________________________________________________________________________________________

function f_pausa { 

for i in `seq 1 100`; do echo -en "$i %\b\b\b\b\b\b"; sleep 0.08; done

}

#____________________________________________________________________________________________

#Stable
Testing
#Unstable
#GoogleChrome
Firefox
#Spotify
Sublime
Update
Full-upgrade
instalar
exit
