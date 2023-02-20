echo -off

cls

echo "iMac15,1, Radeon R9 4GB VRAM"
echo "Mac-FA842E06C61E91C5"
echo "Flashing SMC with 820-5029 v2.23f11 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-FA842E06C61E91C5\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-FA842E06C61E91C5\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-FA842E06C61E91C5\Mac-FA842E06C61E91C5.smc

complete.nsh