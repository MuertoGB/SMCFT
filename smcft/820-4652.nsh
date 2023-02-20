echo -off

cls

echo "iMac15,1, Radeon R9 2GB VRAM"
echo "Mac-42FD25EABCABB274"
echo "Flashing SMC with 820-4652 v2.22f16 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-42FD25EABCABB274\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-42FD25EABCABB274\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-42FD25EABCABB274\Mac-42FD25EABCABB274.smc

complete.nsh