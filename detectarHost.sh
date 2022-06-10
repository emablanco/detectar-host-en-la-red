#! /bin/bash


#creo un bucle que va del 1 al 254
for i in $(seq 1 254);do
   
    #Una vez que ejecuto el binario ping redirijo la salida stdout y stderr la redirijo a /dev/null

    timeout 1 ping -c 1 192.168.1.$i 2>/dev/null 1>/dev/null

    if [ $? -eq 0 ];then
       echo -e "\nHOST [*]" 
        python3 wichOS.py 192.168.1.$i
    fi
done

