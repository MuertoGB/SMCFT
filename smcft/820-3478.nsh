echo -off

cls

echo "Model: iMac14,2, 1GB VRAM"
echo "Board: 820-3478"
echo "Flashing SMC with Mac-27ADBB7B4CEE8E61 v2.15f7 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-27ADBB7B4CEE8E61\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-27ADBB7B4CEE8E61\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-27ADBB7B4CEE8E61\Mac-27ADBB7B4CEE8E61.smc

complete.nsh