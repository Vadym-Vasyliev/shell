rate="$(wget -q -O- https://privatbank.ua/ru/ | grep -m 1 '<td width="25%" style="text-align:right;">\d\{2\}\.*\d\{0,2\}</td>' | grep -oh '\d\{2\}\.*\d\{0,2\}'|sed -n 2p)"
echo $rate
