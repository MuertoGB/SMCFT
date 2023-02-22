echo -off

cls

echo "iMac17,1, 4GB VRAM"
echo "Mac-B809C3757DA9BB8D"
echo "Flashing SMC with 820-00292 v2.34f3 firmware..."

smcutil.efi -force -norestart -LoadUpdate payloads\Mac-B809C3757DA9BB8D\flasher_update.smc
smcutil.efi -force -norestart -LoadBase payloads\Mac-B809C3757DA9BB8D\flasher_base.smc
smcutil.efi -force -norestart -LoadApp payloads\Mac-B809C3757DA9BB8D\Mac-B809C3757DA9BB8D.smc

complete.nsh