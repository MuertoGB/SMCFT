echo -off

cls

echo "Model: iMac14,1, NVIDIA dGPU"
echo "Board: 820-3588"
echo "Flashing SMC with Mac-031B6874CF7F642A v2.14f24 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-031B6874CF7F642A\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-031B6874CF7F642A\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-031B6874CF7F642A\Mac-031B6874CF7F642A.smc

complete.nsh