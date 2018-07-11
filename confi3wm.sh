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
mv ~/Debiani3/a.jpg ~/.config/i3/background
mv ~/Debiani3/b.jpg ~/.config/i3/background
mv ~/Debiani3/c.jpg ~/.config/i3/background
mv ~/Debiani3/d.jpg ~/.config/i3/background
mv ~/Debiani3/e.jpg ~/.config/i3/background
mv ~/Debiani3/f.jpg ~/.config/i3/background
mv ~/Debiani3/g.jpg ~/.config/i3/background
mv ~/Debiani3/config ~/.config/i3/config
mv ~/Debiani3/i3blocks.conf ~/.config/i3/
mv ~/Debiani3/audio ~/.config/i3/
mv ~/Debiani3/battery ~/.config/i3/
mv ~/Debiani3/ip-address ~/.config/i3/
mv ~/Debiani3/cpu ~/.config/i3/
mv ~/Debiani3/fehbg ~/.config/i3/
mv ~/Debiani3/wallpaperrandomize ~/.config/i3/
mv ~/Debiani3/uca.xml ~/.config/Thunar/uca.xml
echo "Configurando o Grub ..."
sleep 2
mv ~/Debiani3/bg.jpg ~/.config/grub/background/
echo "GRUB_BACKGROUND=~/.config/grub/background/bg.jpg">> /etc/default/grub
update-grub
sleep 2
echo "Configurações terminadas"
sleep 2
~/Debiani3/./final.sh
}
carrega
move
