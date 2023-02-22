echo -off

mode 176 47
cls

echo "Model: MacBookAir7,2"
echo "Board: 820-00165"
echo "Flashing SMC with Mac-937CB26E2E02BB01 v2.27f2 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-937CB26E2E02BB01\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-937CB26E2E02BB01\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-937CB26E2E02BB01\Mac-937CB26E2E02BB01.smc

complete.nsh