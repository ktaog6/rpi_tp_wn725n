#!/bin/bash

################ Script Info ################		

## Program: TP-Link WN725N Driver Make V1.0
## Author:Clumart.G
## Date: 2014-05-01
## Update:None


################ Env Define ################

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:~/sbin
LANG=C
export PATH
export LANG

################ Var Setting ################

HomeDir="/tmp/wn725n/"

################ Func Define ################ 
function _info_msg() {
_header
echo -e " |                                                                |"
echo -e " |             Thank you for use tp-link wn725n make !            |"
echo -e " |                                                                |"
echo -e " |                         Version: 1.0                           |"
echo -e " |                                                                |"
echo -e " |                     http://www.idcsrv.com                      |"
echo -e " |                                                                |"
echo -e " |                   Author:翅儿学飞(Clumart.G)                   |"
echo -e " |                    Email:myregs6@gmail.com                     |"
echo -e " |                         QQ:1810836851                          |"
echo -e " |                         QQ群:61749648                          |"
echo -e " |                                                                |"
echo -e " |          Hit [ENTER] to continue or ctrl+c to exit             |"
echo -e " |                                                                |"
printf " o----------------------------------------------------------------o\n"	
 read entcs 
clear
}

function _end_msg() {
echo -e "###################################################################"
echo ""
echo -e "                         Install Finish :)"
echo ""
echo -e "                         Please reboot OS"
echo ""
echo -e "###################################################################"
echo ""
echo ""
_header
echo -e " |                                                                |"
echo -e " |             Thank you for use tp-link wn725n make !            |"
echo -e " |                                                                |"
echo -e " |                The dirver has been installed!                |"
echo -e " |                                                                |"
echo -e " |                     http://www.idcsrv.com                      |"
echo -e " |                                                                |"
echo -e " |                   Author:翅儿学飞(Clumart.G)                   |"
echo -e " |                    Email:myregs6@gmail.com                     |"
echo -e " |                         QQ:1810836851                          |"
echo -e " |                         QQ群:61749648                          |"
echo -e " |                                                                |"
printf " o----------------------------------------------------------------o\n"
}

function _header() {
	printf " o----------------------------------------------------------------o\n"
	printf " | :: TP-Link WN725N MAKE                     v1.0.0 (2013/05/01) |\n"
	printf " o----------------------------------------------------------------o\n"	
}

##Program Function

################ Main ################
clear
_info_msg

if [ `id -u` != "0" ]; then
echo -e "You need to be be the root user to run this script.\nWe also suggest you use a direct root login, not su -, sudo etc..."
exit 1
fi

if [ ! -d $HomeDir ]; then
	mkdir -p $HomeDir
fi

cd $HomeDir || exit 1

curl -O https://raw.github.com/ktaog6/rpi_tp_wn725n/master/rpi/output/8188eu.ko
\cp -a 8818eu.ko /lib/modules/`uname -r`/kernel/net/wireless/
depmod
modprobe 8188eu

_end_msg
############  Clean Cache  ############
rm -rf ${HomeDir}
