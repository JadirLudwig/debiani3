# !/bin/bash
# 0+ assistente para o APT

function main_menu {
opcao=0
until [ "$opcao" = "3"]; do
clear

echo '0+ assistente para o APT'
echo
echo 'opções'
echo '==========================='
echo
echo '[1] Menu de Programas'
echo '[2] APT Utilidades'
echo '[3] Sair'
echo
echo -n 'Enter: '
read opcao
echo ''
case $opcao in 
	1 ) menu_programas;;
	2 ) menu_apt;;
	3 ) f_sair;;
	* ) tput setf 3;echo "Erro! Entradas válidas - 1, 2, ou 3";tput setf 3; 
esac
done
}
function menu_programas {
opcao=10
until [ "$opcao" = "10"]; do
clear
echo 'Menu de Programas'
echo
echo '[1] Instalar Programa -- Instalar programas dos repositórios --'
echo '[2] Reinstalar Programa -- Reinstalar programas dos repositórios --'
echo '[3] Remover Programa -- Desinstalar pacotes de software sem remover seus arquivos de configuração --'
echo '[4] Autoremover Programa -- Remover pacotes de software, incluindo seus arquivos de configuração --'
echo '[5] Listar Programa -- Listar programas baseado pelo nome do pacote dentro dos repositórios --'
echo '[6] Buscar Programa -- Pesquisar programas dentro dos repositórios --'
echo '[7] Mostrar detales do Programa -- Mostrar detales sobre os pacotes de um programas baseado pelo nome do pacote dentro dos repositórios --'
echo '[8] Executar Programa -- Executar programas instalados --'
echo '[9] Voltar'
echo '[10] Sair'
echo
echo -n 'Enter: '
read opcao
echo ''
case $opcao in 
	1 ) f_instalar_programa;;
	2 ) f_reinstalar_programa;;
	3 ) f_remove;;
	4 ) f_autoremove;;
	5 ) f_listar;;
	6 ) f_buscar;;
	7 ) f_mostrar;;
	8 ) f_executar;;
	9 ) main_menu;;
	10 ) f_sair;;
	* ) tput setf 10;echo "Erro! Entradas válidas - 1..10";tput setf 10; 
esac
done
}
function menu_apt {
opcao=0
until [ "$opcao" = "6"]; do
clear
echo 'APT Utilidades'
echo
echo '[1] APT Update -- update é usado para baixar as informações do pacote de todas as fontes configuradas.--'
echo '[2] APT Upgrade -- Vai atualizar todas as versões dos pacotes instalados, sem remover pacotes.--'
echo '[3] APT full-upgrade -- Também atualiza os pacotes, porém remove e instala pacotes também se for necessário -mais completa, porém, "mais arriscada"- --'
echo '[4] Autoclean -- Libera espaco em disco removendo apenas os arquivos de pacotes que não possam mais ser baixados do repositório local. --'
echo '[5] Voltar'
echo '[6] Sair'
echo
echo -n 'Enter: '
read opcao
echo ''
case $opcao in 
	1 ) f_update;;
	2 ) f_upgrade;;
	3 ) f_full_upgrade;;
	4 ) f_autoclean;;
	5 ) main_menu;;
	6 ) f_sair;;
	* ) tput setf 6;echo "Erro! Entradas válidas - 1, 2, 3, 4, 5 ou 6";tput setf 6; 
esac
done
}

# inicio das funcoes do menu de programas

function f_instalar_programa {
	clear
	echo
	echo 'Instalar Programa'
	echo 
	echo -n 'Digite o nome do programa: ' && read nome_do_programa && sudo apt-get install $nome_do_programa
	f_final
}
function f_reinstalar_programa {
	clear
	echo
	echo 'Reinstalar Programa'
	echo 
	echo -n 'Digite o nome do programa: ' && read nome_do_programa && sudo apt-get --reinstall install $nome_do_programa
	f_final
}
function f_remove {
	clear
	echo
	echo 'Remover Programa'
	echo 
	echo -n 'Digite o nome do programa: ' && read nome_do_programa && sudo apt-get remove $nome_do_programa
	f_final
}
function f_autoremove {
	clear
	echo
	echo 'Autoremover Programa'
	echo 
	echo -n 'Digite o nome do programa: ' && read nome_do_programa && sudo apt-get autoremove $nome_do_programa
	f_final
}
function f_listar {
	clear
	echo
	echo 'Listar Programa'
	echo 
	echo -n 'Digite o nome do programa: ' && read nome_do_programa && apt list $nome_do_programa
	f_quest
	f_final
}
function f_buscar {
	clear
	echo
	echo 'Buscar Programa'
	echo 
	echo -n 'Digite o nome do programa: ' && read nome_do_programa && apt-cache search $nome_do_programa
	f_quest
	f_final
}
function f_mostrar {
	clear
	echo
	echo 'Mostrar Programa'
	echo 
	echo -n 'Digite o nome do programa: ' && read nome_do_programa && apt show $nome_do_programa
	f_quest
	f_final
}
function f_executar {
	clear
	echo
	echo 'Executar Programa'
	echo 
	echo -n 'Digite o nome do programa: ' && read nome_do_programa && $nome_do_programa
	f_final
}

# final das funcoes do menu de programas

# inicio das funcoes do APT Utilidades

function f_update {
	echo 'APT Update' && sudo apt-get update
	f_final
}
function f_upgrade {
	echo 'APT Upgrade' && sudo apt-get upgrade
	f_final
}
function f_full_upgrade {
	echo 'APT full-upgrade' && sudo apt full-upgrade
	f_final
}
function f_autoclean {
	echo 'Autoclean' && sudo apt-get autoclean
	f_final
}

# final das funcoes do APT Utilidades

# funcoes extras

function f_sair {
	echo 'Encerrando!' && sleep 1
	exit
}
function f_final {
	echo
	sleep 1
	echo 'Concluido'
	sleep 2
}
function f_quest {
	option=0
	until [ "$option" = "6" ]; do
	echo
	echo '[1]Instalar[2]Reinstalar[3]Autoremover[4]Mostrar[5]Executar[6]Voltar'
	echo -n 'Enter: '
	read opcao
	echo ''
	case $opcao in 
		1 ) f_instalar_programa_q;;
		2 ) f_reinstalar_programa_q;;
		3 ) f_autoremove_q;;
		4 ) f_mostrar_q;;
		5 ) f_executar_q;;
		6 ) menu_programas;;
		* ) tput setf 6;echo "Erro! Entradas válidas - 1..10";tput setf 6; 
	esac
	done
}
function f_instalar_programa_q {
	
	controle=$'wait'
	while [ "$controle" = "wait" ]; do
	echo -n "Instalar $nome_do_programa ? [s/n]" 
	read resp
	echo
	if [ "$resp" = 's' ] || [ "$resp" = 'S' ];
then
		sudo apt-get install $nome_do_programa
		f_final
		controle=$'ok'
	elif [ "$resp" = 'n' ] || [ "$resp" = 'N' ];
then
		echo -n 'Quer digitar o nome do programa a instalar? [s/n]'
		read resp
		if [ "$resp" = 's' ] || [ "$resp" = 'S' ];
then
			controle=$'ok'
			f_instalar_programa
		elif [ "$resp" = 'n' ] || [ "$resp" = 'N' ];
then
			f_final
			menu_programas
			controle=$'ok'
		fi
	fi
done
}
function f_reinstalar_programa_q {
	
	controle=$'wait'
	while [ "$controle" = "wait" ]; do
	echo -n "Reinstalar $nome_do_programa ? [s/n]" 
	read resp
	echo
	if [ "$resp" = 's' ] || [ "$resp" = 'S' ];
then
		sudo apt-get --reinstall install $nome_do_programa
		f_final
		controle=$'ok'
	elif [ "$resp" = 'n' ] || [ "$resp" = 'N' ];
then
		echo -n 'Quer digitar o nome do programa a reinstalar? [s/n]'
		read resp
		if [ "$resp" = 's' ] || [ "$resp" = 'S' ];
then
			controle=$'ok'
			f_reinstalar_programa
		elif [ "$resp" = 'n' ] || [ "$resp" = 'N' ];
then
			f_final
			menu_programas
			controle=$'ok'
		fi
	fi
done
}
function f_autoremove_q {
	
	controle=$'wait'
	while [ "$controle" = "wait" ]; do
	echo -n "Autoremover $nome_do_programa ? [s/n]" 
	read resp
	echo
	if [ "$resp" = 's' ] || [ "$resp" = 'S' ];
then
		sudo apt-get autoremove $nome_do_programa
		f_final
		controle=$'ok'
	elif [ "$resp" = 'n' ] || [ "$resp" = 'N' ];
then
		echo -n 'Quer digitar o nome do programa a remomer? [s/n]'
		read resp
		if [ "$resp" = 's' ] || [ "$resp" = 'S' ];
then
			controle=$'ok'
			f_autoremove
		elif [ "$resp" = 'n' ] || [ "$resp" = 'N' ];
then
			f_final
			menu_programas
			controle=$'ok'
		fi
	fi
done
}
function f_mostrar_q {
	
	controle=$'wait'
	while [ "$controle" = "wait" ]; do
	echo -n "Mostrar detalhes de $nome_do_programa ? [s/n]" 
	read resp
	echo
	if [ "$resp" = 's' ] || [ "$resp" = 'S' ];
then
		apt show $nome_do_programa
		f_final
		controle=$'ok'
	elif [ "$resp" = 'n' ] || [ "$resp" = 'N' ];
then
		echo -n 'Quer digitar o nome do programa a mostrar detalhes? [s/n]'
		read resp
		if [ "$resp" = 's' ] || [ "$resp" = 'S' ];
then
			controle=$'ok'
			f_mostrar
		elif [ "$resp" = 'n' ] || [ "$resp" = 'N' ];
then
			f_final
			menu_programas
			controle=$'ok'
		fi
	fi
done
}
function f_executar_q {
	
	controle=$'wait'
	while [ "$controle" = "wait" ]; do
	echo -n "Executar $nome_do_programa ? [s/n]" 
	read resp
	echo
	if [ "$resp" = 's' ] || [ "$resp" = 'S' ];
then
		$nome_do_programa
		f_final
		controle=$'ok'
	elif [ "$resp" = 'n' ] || [ "$resp" = 'N' ];
then
		echo -n 'Quer digitar o nome do programa a executar? [s/n]'
		read resp
		if [ "$resp" = 's' ] || [ "$resp" = 'S' ];
then
			controle=$'ok'
			f_executar
		elif [ "$resp" = 'n' ] || [ "$resp" = 'N' ];
then
			f_final
			menu_programas
			controle=$'ok'
		fi
	fi
done
}

#final das funcoes extras

# Inicio do programa

main_menu
