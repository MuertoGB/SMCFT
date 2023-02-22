echo -off

mode 160 42
cls

echo "Model: MacBookPro11,1"
echo "Board: 820-3536"
echo "Flashing SMC with Mac-189A3D4F975D5FFC v2.16f68 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-189A3D4F975D5FFC\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-189A3D4F975D5FFC\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-189A3D4F975D5FFC\Mac-189A3D4F975D5FFC.smc

complete.nsh