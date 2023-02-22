echo -off

cls

echo "Model: MacBookPro11,2, dGPU"
echo "Model: MacBookPro11,3, dGPU"
echo "Board: 820-3787"
echo "Flashing SMC with Mac-2BD1B31983FE1663 v2.19f12 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-2BD1B31983FE1663\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-2BD1B31983FE1663\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-2BD1B31983FE1663\Mac-2BD1B31983FE1663.smc

complete.nsh