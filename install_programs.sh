# !bin/bash

function carrega { 
clear
echo
echo "       ###########"
sleep 0.2
echo "    ################."
sleep 0.2
echo "  #######        #####"
sleep 0.2
echo " ######            #####"
sleep 0.2
echo "#####       ####.     ###     #####       ############"
sleep 0.2
echo "####     ####    :    ###     #####       ############"
sleep 0.2
echo "###      ###    /     ###                         ####"
sleep 0.2
echo "###      ###          ###     #####               ####"
sleep 0.2
echo "###      ###         ###      #####       ############"
sleep 0.2
echo " ###      ###       ###       #####       ############"
sleep 0.2
echo "  ###       ###.#.###         #####               ####"
sleep 0.2
echo "    ###                       #####               ####"
sleep 0.2
echo "     ###                      #####       ############"
sleep 0.2
echo "       ###                    #####       ############"
sleep 0.2
echo "         ###"
sleep 0.2
echo "            ###"
echo ""
}

#//////////////////////////////////////////////////////////////////////////

function atualizaAPT {

###########################################################################
### Função para atualizar o sistema e assim poder instalar os programas####
###########################################################################

echo
echo "Atualizando o APT"
f_pausa
apt update 
apt upgrade
f_pausa
}
#////////////////////////////////////////////////////////////////////////////

function instalarProgramas {

##############################################################################
#################### Função para instalar os programas #######################
######### Adicione ou substitua pragramas conforme sua nescessidade ##########
##############################################################################

echo "Instalando programas"
f_pausa

##############################################################################
###################### Não altere esses programas ############################
##############################################################################

apt install i3 i3blocks lightdm thunar feh catfish p7zip sudo -y

##############################################################################
############## Adicione ou remova estes programas ao seu gosto ###############
##############################################################################

apt install gedit xfce4-terminal vlc cmus cli-visualizer hddtemp lm-sensors parcellite scrot curl simplescreenrecorder unar compton flatpak -y
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
f_pausa
}

#/////////////////////////////////////////////////////////////////////////////

function confSudo { 

##############################################################################
########################### Configuração do sudo #############################
##### Se não quizer adicionar sudo no sistema apague o sudo na linhha de###### 
#################instalação acima e comente ou apague esta função ############
##############################################################################

echo
echo -n 'Digite o nome para o usuário sudo: ' && read nome_do_sudo && usermod -G adm,sudo $nome_do_sudo
f_pausa
echo "Ok"
echo
}

#/////////////////////////////////////////////////////////////////////////////

function f_pausa {
sleep 2
echo -n " ."
sleep 1
echo -n "."
sleep 1
echo -n "."
}

#//////////////////////////////////////////////////////////////////////////////

##############################################################################
############################# Inicio do Script ###############################
##############################################################################
carrega
atualizaAPT
instalarProgramas
confSudo
~/Debiani3/./confi3wm.sh


