echo -off

cls

echo "Model: iMac16,1, Intel HD 6000 iGPU"
echo "Board: 820-00430"
echo "Flashing SMC with Mac-A369DDC4E67F1C45 v2.31f37 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-A369DDC4E67F1C45\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-A369DDC4E67F1C45\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-A369DDC4E67F1C45\Mac-A369DDC4E67F1C45.smc

complete.nsh