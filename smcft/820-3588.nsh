echo -off

cls

echo "Model: iMac14,3, Intel iGPU"
echo "Board: 820-3588"
echo "Flashing SMC with Mac-77EB7D7DAF985301 v2.17f7 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-77EB7D7DAF985301\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-77EB7D7DAF985301\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-77EB7D7DAF985301\Mac-77EB7D7DAF985301.smc

complete.nsh