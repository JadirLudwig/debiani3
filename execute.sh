# !/bin/bash

function Aviso {
clear
echo "CUIDADO ESSE SCRIPT VAI FAZER MODIFICAÇÕES PROFUNDAS NO SISTEMA"
sleep 2
echo "LEIA O ARQUIVO README.md ANTES DE RODAR ESTE SCRIPT!"
echo
}
function quest {
sleep 2
controle=$"wait"
while [ "$controle" = "wait" ]; do
echo -n "Continuar? [s/n] " 
read resp
echo
if [ "$resp" = "s" ] || [ "$resp" = "S" ];
then
	chmod +x logo.sh sources_list.sh install_programs.sh confi3wm.sh final.sh atencao.sh execute2.sh
	echo "Atualizando o Apt"
	sleep 2
	apt update
	sleep 4
	echo "Instalando o I3wm e o LightDM"
	sleep 2
	apt install i3 lightdm -y
	sleep 4
	./atencao.sh
	controle=$"ok"
elif [ "$resp" = "n" ] || [ "$resp" = "N" ];
then
	echo "Encerrando..."
	sleep 2
	controle=$"ok"
fi
done
}
Aviso
quest
