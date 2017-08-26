read rate

echo "EUR: $rate"
exit

#TODO
tresholdRate="30.1"
color="green"
if (( $(echo "$rate > $tresholdRate" | bc -l) )); then
    color="red"
fi
cat << EOF
<p style="color: rgb(49, 151, 116); background-color: $color"></p>
<b>$rate</b>
</p>
EOF