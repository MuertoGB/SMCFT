echo -off

cls

echo "iMac16,2, Intel Iris Pro 6200 iGPU"
echo "Mac-FFE5EF870D7BA81A"
echo "Flashing SMC with 820-00431 v2.32f21 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-FFE5EF870D7BA81A\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-FFE5EF870D7BA81A\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-FFE5EF870D7BA81A\Mac-FFE5EF870D7BA81A.smc

complete.nsh