# !bin/bash
function carrega {
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
function move {
echo
echo "Configurando o sitema ..."
sleep 2
echo "Consedendo as permisões nescessária..."
sleep 2
chmod +x battery cpu fehbg audio ip-address wallpaperrandomize.sh
echo "Movendo arquivos..."
sleep 2
mv ~/debiani3/a.jpg ~/.config/i3/background
mv ~/debiani3/b.jpg ~/.config/i3/background
mv ~/debiani3/c.jpg ~/.config/i3/background
mv ~/debiani3/d.jpg ~/.config/i3/background
mv ~/debiani3/e.jpg ~/.config/i3/background
mv ~/debiani3/f.jpg ~/.config/i3/background
mv ~/debiani3/g.jpg ~/.config/i3/background
mv ~/debiani3/config ~/.config/i3/config
mv ~/debiani3/i3blocks.conf ~/.config/i3/
mv ~/debiani3/audio ~/.config/i3/
mv ~/debiani3/battery ~/.config/i3/
mv ~/debiani3/ip-address ~/.config/i3/
mv ~/debiani3/cpu ~/.config/i3/
mv ~/debiani3/fehbg ~/.config/i3/
mv ~/debiani3/wallpaperrandomize ~/.config/i3/
mv ~/debiani3/uca.xml ~/.config/Thunar/uca.xml
echo "Configurando o Grub ..."
sleep 2
mv ~/debiani3/bg.jpg ~/.config/grub/background/
echo "GRUB_BACKGROUND=~/.config/grub/background/bg.jpg">> /etc/default/grub
update-grub
sleep 2
echo "Configurações terminadas"
sleep 2
./final.sh
}
carrega
move
