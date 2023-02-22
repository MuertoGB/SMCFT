echo -off

cls

echo "Model: iMac17,1, 2GB VRAM"
echo "Board: 820-00291"
echo "Flashing SMC with Mac-65CE76090165799A v2.33f12 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-65CE76090165799A\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-65CE76090165799A\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-65CE76090165799A\Mac-65CE76090165799A.smc

complete.nsh