echo -off

cls

echo "iMac17,1, 2GB VRAM"
echo "Mac-DB15BD556843C820"
echo "Flashing SMC with 820-00292 v2.33f12 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-DB15BD556843C820\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-DB15BD556843C820\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-DB15BD556843C820\Mac-DB15BD556843C820.smc

complete.nsh