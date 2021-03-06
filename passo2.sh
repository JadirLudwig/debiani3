# !/bin/bash

#____________________________________________________________________________________________

function Update { 
clear
echo
echo "Atualizando com Update"
echo


f_pausa


apt update
echo
echo "Upgrade"
apt full-upgrade
echo


f_pausa

}

#____________________________________________________________________________________________

function InstalarProgramas {
clear
echo
echo "Instalando programas"
f_pausa
echo

##############################################################################
############## Adicione ou remova estes programas ao seu gosto ###############
##############################################################################

apt install feh -y
apt install catfish -y
apt install p7zip -y
apt install gedit -y
apt install xfce4-terminal -y
apt install vlc -y
apt install cmus -y
apt install cli-visualizer -y
apt install hddtemp -y
apt install lm-sensors -y
apt install parcellite -y
apt install scrot -y
apt install curl -y
apt install simplescreenrecorder -y
apt install unar -y
apt install compton -y
apt install flatpak -y
apt install sudo -y


### Mozila Firefox para o Debian Stable
#apt-get install firefox-esr
### Mozila Firefox para o Debian Testing (esr52/realise)
#apt-get install -t unstable firefox-esr
apt install -t unstable firefox
### Mozila Firefox para o Debian Unstable (esr52/realise)
#apt-get install firefox-esr
#apt-get install firefox
### Para instalar a versão beta do Mozila Firefox veja o site http://mozilla.debian.net/
#
echo


f_pausa


}

#____________________________________________________________________________________________

function ConfSudo { 

##############################################################################
########################### Configuração do sudo #############################
##### Se não quizer adicionar sudo no sistema apague o sudo na linhha de###### 
#################instalação acima e comente ou apague esta função ############
##############################################################################

echo
echo -n 'Digite o nome para o usuário sudo: ' && read nome_do_sudo && usermod -G adm,sudo $nome_do_sudo
echo


f_pausa


echo "Ok"
echo
}

#____________________________________________________________________________________________

function Move {
echo
echo -n "Qual o nome do usuário do sistema? " && read USER
echo
echo "Configurando o sitema ..."
f_pausa
echo "Consedendo as permisões nescessária..."
echo


f_pausa


echo
chmod +x battery cpu fehbg audio ip-address wallpaperrandomize.sh
echo "Movendo arquivos..."
echo


f_pausa


echo
mkdir -p /home/$USER/.config/i3/background/
mv /home/$USER/debiani3/a.jpg /home/$USER/.config/i3/background/
mv /home/$USER/debiani3/b.jpg /home/$USER/.config/i3/background/
mv /home/$USER/debiani3/c.jpg /home/$USER/.config/i3/background/
mv /home/$USER/debiani3/d.jpg /home/$USER/.config/i3/background/
mv /home/$USER/debiani3/e.jpg /home/$USER/.config/i3/background/
mv /home/$USER/debiani3/f.jpg /home/$USER/.config/i3/background/
mv /home/$USER/debiani3/g.jpg /home/$USER/.config/i3/background/
mv /home/$USER/debiani3/config /home/$USER/.config/i3/config
mv /home/$USER/debiani3/i3blocks.conf /home/$USER/.config/i3/
mv /home/$USER/debiani3/audio /home/$USER/.config/i3/
mv /home/$USER/debiani3/battery /home/$USER/.config/i3/
mv /home/$USER/debiani3/ip-address /home/$USER/.config/i3/
mv /home/$USER/debiani3/cpu /home/$USER/.config/i3/
mv /home/$USER/debiani3/fehbg /home/$USER/.config/i3/
mv /home/$USER/debiani3/wallpaperrandomize.sh /home/$USER/.config/i3/
mv /home/$USER/debiani3/uca.xml /home/$USER/.config/Thunar/uca.xml
echo "Configurando o Grub ..."
echo


f_pausa


echo
mkdir -p /home/$USER/.config/grub/background/
mv /home/$USER/debiani3/bg.jpg /home/$USER/.config/grub/background/
echo "GRUB_BACKGROUND=~/.config/grub/background/bg.jpg">> /etc/default/grub
update-grub
f_pausa
echo
echo "Configurações terminadas"
echo

f_pausa
}

#____________________________________________________________________________________________

function Logo {

clear
echo
sleep 0.5
echo "       ###########"
sleep 0.5
echo "    ################."
sleep 0.5
echo "  #######        #####"
sleep 0.5
echo " ######            #####"
sleep 0.5
echo "#####       ####.     ###     #####       ############"
sleep 0.5
echo "####     ####    :    ###     #####       ############"
sleep 0.5
echo "###      ###    /     ###                         ####"
sleep 0.5
echo "###      ###          ###     #####               ####"
sleep 0.5
echo "###      ###         ###      #####       ############"
sleep 0.5
echo " ###      ###       ###       #####       ############"
sleep 0.5
echo "  ###       ###.#.###         #####               ####"
sleep 0.5
echo "    ###                       #####               ####"
sleep 0.5
echo "     ###                      #####       ############"
sleep 0.5
echo "       ###                    #####       ############"
sleep 0.5
echo "         ###"
sleep 0.5
echo "            ###"
echo ""
}

#____________________________________________________________________________________________


#____________________________________________________________________________________________

function Fim {

clear
sleep 0.2
echo "############ #####  #####       #####"
sleep 0.2
echo "############ #####  ######     ######"
sleep 0.2
echo "#####               #######   #######"
sleep 0.2
echo "#########    #####  ######## ########"
sleep 0.2
echo "#########    #####  #################"
sleep 0.2
echo "#####        #####  #### ####### ####"
sleep 0.2
echo "#####        #####  ####   ###   ####"
sleep 0.2
echo "#####        #####  ####    #    ####"
echo
sleep 1
echo "REINICIANDO A MAQUINA"
echo

f_pausa

#reboot

}

#____________________________________________________________________________________________

function f_pausa {

for i in `seq 1 100`; do echo -en "# $i%\b\b\b\b\b" ; sleep 0.08; done

}

#____________________________________________________________________________________________

##############################################################################
############################# Inicio do Script ###############################
##############################################################################
Update
InstalarProgramas
ConfSudo
Move
Logo
Fim
exit
