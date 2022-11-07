#!/bin/bash
#VPS-MX 8.6 
install_mod() {
  clear && clear
  msg -bar
  echo -ne "\033[1;97m Digite su slogan: \033[1;32m" && read slogan
  tput cuu1 && tput dl1
  echo -e "$slogan"
  msg -bar
  clear && clear
  mkdir /etc/VPS-MX >/dev/null 2>&1
  cd /etc
  wget https://raw.githubusercontent.com/emirjorge/premium/master/premium.tar.xz >/dev/null 2>&1
  tar -xf premium.tar.xz >/dev/null 2>&1
  chmod +x premium.tar.xz >/dev/null 2>&1
  rm -rf premium.tar.xz
  cd
  chmod -R 755 /etc/VPS-MX
  rm -rf /etc/VPS-MX/MEUIPvps
  echo "/etc/VPS-MX/menu" >/usr/bin/menu && chmod +x /usr/bin/menu
  echo "/etc/VPS-MX/menu" >/usr/bin/VPSMX && chmod +x /usr/bin/VPSMX
  echo "$slogan" >/etc/VPS-MX/message.txt
  [[ ! -d /usr/local/lib ]] && mkdir /usr/local/lib
  [[ ! -d /usr/local/lib/ubuntn ]] && mkdir /usr/local/lib/ubuntn
  [[ ! -d /usr/local/lib/ubuntn/apache ]] && mkdir /usr/local/lib/ubuntn/apache
  [[ ! -d /usr/local/lib/ubuntn/apache/ver ]] && mkdir /usr/local/lib/ubuntn/apache/ver
  [[ ! -d /usr/share ]] && mkdir /usr/share
  [[ ! -d /usr/share/mediaptre ]] && mkdir /usr/share/mediaptre
  [[ ! -d /usr/share/mediaptre/local ]] && mkdir /usr/share/mediaptre/local
  [[ ! -d /usr/share/mediaptre/local/log ]] && mkdir /usr/share/mediaptre/local/log
  [[ ! -d /usr/share/mediaptre/local/log/lognull ]] && mkdir /usr/share/mediaptre/local/log/lognull
  [[ ! -d /etc/VPS-MX/B-VPS-MXuser ]] && mkdir /etc/VPS-MX/B-VPS-MXuser
  [[ ! -d /usr/local/protec ]] && mkdir /usr/local/protec
  [[ ! -d /usr/local/protec/rip ]] && mkdir /usr/local/protec/rip
  [[ ! -d /etc/protecbin ]] && mkdir /etc/protecbin
  cd
  [[ ! -d /etc/VPS-MX/v2ray ]] && mkdir /etc/VPS-MX/v2ray
  [[ ! -d /etc/VPS-MX/Slow ]] && mkdir /etc/VPS-MX/Slow
  [[ ! -d /etc/VPS-MX/Slow/install ]] && mkdir /etc/VPS-MX/Slow/install
  [[ ! -d /etc/VPS-MX/Slow/Key ]] && mkdir /etc/VPS-MX/Slow/Key
  touch /usr/share/lognull &>/dev/null
  wget -O /bin/resetsshdrop https://raw.githubusercontent.com/emirjorge/premium/master/librerias/resetsshdrop &>/dev/null
  chmod +x /bin/resetsshdrop
  grep -v "^PasswordAuthentication" /etc/ssh/sshd_config >/tmp/passlogin && mv /tmp/passlogin /etc/ssh/sshd_config
  echo "PasswordAuthentication yes" >>/etc/ssh/sshd_config
  rm -rf /usr/local/lib/systemubu1 &>/dev/null
  rm -rf /etc/versin_script &>/dev/null
  v1=$(curl -sSL "https://raw.githubusercontent.com/emirjorge/premium/master/version")
  echo "$v1" >/etc/versin_script
  wget -O /etc/versin_script_new https://raw.githubusercontent.com/emirjorge/premium/master/version &>/dev/null
  echo '#!/bin/sh -e' >/etc/rc.local
  sudo chmod +x /etc/rc.local
  echo "sudo resetsshdrop" >>/etc/rc.local
  echo "sleep 2s" >>/etc/rc.local
  echo "exit 0" >>/etc/rc.local
  echo 'clear' >>.bashrc
  echo 'echo ""' >>.bashrc
  echo 'echo -e "\t\033[91m __     ______  ____        __  ____  __ " ' >>.bashrc
  echo 'echo -e "\t\033[91m \ \   / /  _ \/ ___|      |  \/  \ \/ / " ' >>.bashrc
  echo 'echo -e "\t\033[91m  \ \ / /| |_) \___ \ _____| |\/| |\  /  " ' >>.bashrc
  echo 'echo -e "\t\033[91m   \ V / |  __/ ___) |_____| |  | |/  \  " ' >>.bashrc
  echo 'echo -e "\t\033[91m    \_/  |_|   |____/      |_|  |_/_/\_\ " ' >>.bashrc
  echo 'wget -O /etc/versin_script_new https://raw.githubusercontent.com/emirjorge/premium/master/version &>/dev/null' >>.bashrc
  echo 'echo "" ' >>.bashrc
  echo 'mess1="$(less /etc/VPS-MX/message.txt)" ' >>.bashrc
  echo 'echo "" ' >>.bashrc
  echo 'echo -e "\t\033[92mRESELLER : $mess1 "' >>.bashrc
  echo 'echo -e "\t\e[1;33mVERSION: \e[1;31m$(cat /etc/versin_script_new)"' >>.bashrc
  echo 'echo "" ' >>.bashrc
  echo 'echo -e "\t\033[97mPARA MOSTAR PANEL BASH ESCRIBA: menu "' >>.bashrc
  echo 'echo ""' >>.bashrc
  rm -rf /usr/bin/pytransform &>/dev/null
  rm -rf VPS-MX.sh
  rm -rf lista-arq
  service ssh restart &>/dev/null
  clear && clear
  msg -bar
  echo -e "\e[1;92m             >> INSTALACION COMPLETADA <<" && msg bar2
  echo -e "      COMANDO PRINCIPAL PARA ENTRAR AL PANEL "
  echo -e "                      \033[1;41m  menu  \033[0;37m" && msg -bar2
}

#MENUS
/bin/cp /etc/skel/.bashrc ~/
/bin/cp /etc/skel/.bashrc /etc/bash.bashrc

echo -ne " \e[1;93m [\e[1;32m1\e[1;93m]\033[1;31m > \033[1;97m INSTALAR 8.6x VPS \e[97m \n"

echo -ne "\033[1;97mDigite solo el numero segun su respuesta:\e[32m "
read opcao
case $opcao in

1)
  install_mod
  ;;
esac
exit
