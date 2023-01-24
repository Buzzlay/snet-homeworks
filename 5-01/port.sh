#!/bin/bash
echo "Введите IP address для проверки"
read ip_address
echo "Введите порт для проверки"
read port
nc -zvw3 $ip_address $port
status=$?
if [[ $status -eq 0 ]]; then
    echo "Порт открыт"
    echo "$ip_address:$port - открыт" >> /var/log/syslog
else
    echo "Порт закрыт"
    echo "$ip_address:$port - закрыт" >> /var/log/syslog
fi;

