echo -off

cls

echo "Model: MacBookPro11,5, dGPU"
echo "Board: 820-00163"
echo "Flashing SMC with Mac-06F11F11946D27C5 v2.30f2 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-06F11F11946D27C5\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-06F11F11946D27C5\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-06F11F11946D27C5\Mac-06F11F11946D27C5.smc

complete.nsh