echo -off

cls

echo "Model: iMac14,4"
echo "Board: 820-4668"
echo "Flashing SMC with Mac-81E3E92DD6088272 v2.21f92 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-81E3E92DD6088272\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-81E3E92DD6088272\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-81E3E92DD6088272\Mac-81E3E92DD6088272.smc

complete.nsh