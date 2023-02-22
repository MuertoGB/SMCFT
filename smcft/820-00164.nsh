echo -off

mode 176 47
cls

echo "Model: MacBookAir7,1"
echo "Board: 820-00164"
echo "Flashing SMC with Mac-9F18E312C5C2BF0B v2.30f2 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-9F18E312C5C2BF0B\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-9F18E312C5C2BF0B\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-9F18E312C5C2BF0B\Mac-9F18E312C5C2BF0B.smc

complete.nsh