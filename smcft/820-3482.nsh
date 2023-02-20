echo -off

cls

echo "iMac14,1, NVIDIA dGPU"
echo "Mac-031B6874CF7F642A"
echo "Flashing SMC with 820-3588 v2.14f24 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-031B6874CF7F642A\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-031B6874CF7F642A\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-031B6874CF7F642A\Mac-031B6874CF7F642A.smc

complete.nsh