echo -off

mode 176 47
cls

echo "Model: MacBookAir6,2"
echo "Board: 820-3437"
echo "Flashing SMC with Mac-7DF21CB3ED6977E5 v2.13f15 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-7DF21CB3ED6977E5\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-7DF21CB3ED6977E5\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-7DF21CB3ED6977E5\Mac-7DF21CB3ED6977E5.smc

complete.nsh