To Flash the SMC:
 1. Remove the internal storage drive.
 2. If you have a portable device, plug in the power adapter.
 3. Insert your USB stick, then power on the device whilst holding Option ⌥.
 4. Load into SMCTool from the boot menu and let ‘startup.nsh’ run.
 5. Enter the platform type from the menu, then press return.
 6. Enter the motherboard model from the menu, then press return. The SMC will now be flashed.
 7. Type exit to leave the shell, or power down the device to complete the process.

Commands:
 - Use 'exit' to leave the shell.
 - Use 'reset -s' to power off.
 - Use 'mode' to display a list of resolutions, then enter the highest avalable mode. e.g. 'mode 160 42'.
 - You can scroll up and down in the shell with PgUp and PgDn (Requires external keyboard).

If 'startup.nsh' does not run, you must manually find the filesystem:
 - SSD is removed, try 'fs0:', then use the 'ls' command.
 - SSD is present, try 'fs7:', then use the 'ls' command.

If you encounter an issue, or require help, open a ticket on the Github page:
https://github.com/MuertoGB/SMCFT/issues
