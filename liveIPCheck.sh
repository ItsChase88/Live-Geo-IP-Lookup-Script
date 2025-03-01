#!/bin/bash

netstat -ntu | awk '{print $5}' | cut -d: -f1 -s | sort | uniq -c | sort -nk1 -r | while read count ip; do
    if [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then  # Ensure it's a valid IP
        geo=$(curl -s "http://ip-api.com/json/$ip" | awk -F '[:,]' '{for(i=1;i<=NF;i++){if($i~/"city"/) city=$(i+1); if($i~/"regionName"/) regionName=$(i+1); if($i~/"isp"/) isp=$(i+1); if($i~/"country"/) country=$(i+1)}} END{print isp, regionName, city, country}' | tr -d '"' | sed 's/^ //')
        echo "$count $ip - $geo"
    else
        echo "$count $ip - [LOCAL]"
    fi
done
