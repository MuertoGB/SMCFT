echo -off

cls

echo "Model: MacBookAir6,1"
echo "Board: 820-3435"
echo "Flashing SMC with Mac-35C1E88140C3E6CF v2.12f143 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-35C1E88140C3E6CF\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-35C1E88140C3E6CF\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-35C1E88140C3E6CF\Mac-35C1E88140C3E6CF.smc

complete.nsh