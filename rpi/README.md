This is use for make driver of TP-Link WN725N  

INSTALL  
1 curl -O https://raw.github.com/ktaog6/rpi_tp_wn725n/master/rpi/tp_wn725n_driver-1.0.0-1.rpi.noarch.sh  
2 chmod a+x tp_wn725n_driver-1.0.0-1.rpi.noarch.sh  
3 ./tp_wn725n_driver-1.0.0-1.rpi.noarch.sh  
4 reboot  
After reboot ,your "TP-Link WN725N" can work now.  

Your can use 'lsusb' and 'ifconfig ' to check it(you should see wlan0).

Clumart.G
