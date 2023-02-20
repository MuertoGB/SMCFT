
<h1 align="center">
<img width="200" src="resource/img/icon256.png" alt="SMCFT Logo">
<br>
SMC Flash Tool
</h1>

<h4 align="center">Making SMC flashing quicker and easier.</h4>

<p align="center">
  <a href="#about">About</a> •
  <a href="#download">Download</a> •
  <a href="#bootable-usb">Bootable USB</a> •
  <a href="#flashing-an-smc">Flashing An SMC</a> •
  <a href="#compatibility">Compatibility</a> •
  <a href="#disclaimers">Disclaimers</a> •
  <a href="#acknowledgements">Acknowledgements</a> •
  <a href="#donate">Donate</a>
</p>

## About

> ❗ This version is currently unfinished, you should head back to SMCTool unless you absolutely know what you're doing.

This bootable shell is used to program Mac LM4F (Stellaris) System Management Controllers (The SMC) in EFI mode with the correct stock firmware, this enables technicians to replace faulty SMCs with a donor from non-matching machines. SMCFT not only saves time, but money, as a specific donor SMC isn't necessary to have 'on hand'; simply take a donor SMC* from another board, replace it, then flash with this handy bootable software.

> ⚠ *Currently, a full list of SMC boot compatibility between boards has not been established, I recommend you keep the platform and GPU type the same (MacBook, iMac, Mac Mini), (iGPU, dGPU).

## Download

| Version| Release Date| Latest|
|--------|-------------|--------|
| [V1.1.0](https://github.com/MuertoGB/SMCFT/releases/tag/v1.1.0)|Not Set         |`Yes`|
| [V1.0.7](https://github.com/MuertoGB/SMCTool/releases/tag/v1.0.7)|18th Feb 2023   |`No` |

> 📔 See the full [Changelog](CHANGELOG.md).

## Bootable USB

To begin, format a USB disk in ExFAT, FAT32, VFAT or HFS+ for use with SMCFT.
> ⚠ FAT32 using a GUID Partition Table (GPT) is recommended.

Once the memory stick is ready, you can do any of the following:
- Option A: Manually copy all files from the ISO to the formatted memory stick.
- Option B: Write the image to the memory stick with ddrescue, Passmark imageUSB, or similar.
- Option C: Use a bootable USB creation tool and select the ISO, or image as the source file, and the memory stick as the destination.

> ℹ Extended instructions [here](BOOTABLEUSB.md).

## Flashing An SMC

1. Remove the internal storage drive.
2. If you have a portable device, plug in the power adapter.
3. Insert your USB stick, then power on the device whilst holding `Option ⌥`.
4. Load into SMCFT from the boot menu and let 'startup.nsh' run.
5. Enter the platform type from the menu, then press return.
6. Enter the motherboard model from the menu, then press return. The SMC will now be flashed.
7. Type `exit` to leave the shell, or power down the device to complete the process.

> ⚠ You may need to perform an [NVRAM reset](https://support.apple.com/en-mide/HT201255) after flashing an SMC.

> ℹ You can access the readme in shell mode by typing `edit readme.txt` and pressing return.

**Why must the SMC be flashed?:**\
Each System Management Controller is specifically programmed for it's counterpart board, and is in charge of managing video, hibernation, battery charging, thermal and power management. Incorrect or mismatched firmware causes erratic behaviour such as broken display resolution, high fan speed, throttling, and crashing.

**I flashed an incorrect firmware:**\
No problem, just type the correct board number and the correct payload will be flashed. If you restart, or power off after an incorrect payload flash you may brick the device. If a system is somehow rendered 'bricked', and cannot get to the boot menu, you must replace the SMC again. You can always put the incorrectly flashed SMC aside for future use on a board it was 'accidentally' programmed for.

**`startup.nsh` did not run:**\
In this case, you must manually find the USB filesystem. With the internal storage drive present, the filesystem is generally found at `fs7:`, in the shell type `fs7:`, then press return. With the internal storage drive removed, the filesystem is generally found at `fs0:`, in the shell type `fs0:`, then press return. A directory file list can be viewed by typing `ls`, the pressing return.

Once you find the filesystem with 'startup.nsh', you can then run the file.

> ℹ Quick video of flashing an SMC [here](https://www.youtube.com/watch?v=nUm30m3zNxI).

## Compatibility

**Devices:**

| Platform     | Supported?      | Planned?       |
|--------------|-----------------|----------------|
| MacBook Air  | ✅             | `N/A`          |
| MacBook Pro  | ✅             | `N/A`          |
| Mac Mini     | ✅             | `N/A`          |
| iMac         | ✅             | `N/A`          |
| Mac Pro      | ❌             | `Researching`  |

> ℹ See the [compatibility information](COMPATIBILITY.md) for a full list of supported models.

**System Management Controllers:**

|Manufacturer    |Part            |Supported?  |Planned?       |
|----------------|----------------|------------|---------------|
|TI              |LM4F BGA157     |✅         | `N/A`         |
|TI              |TM4C BGA168     |❌         | `Researching` |
|Renesas         |F2117LP BGA145  |❌         | `No`          |

> ℹ Older single file payloads for boards such as 820-3115, 3332, and 3462 are currently being worked out. Support *may* be added in the future.

## Disclaimers

I'm not responsible if you do something wrong, if you're here I expect you to know what you're doing. Where I do my utmost to verify all information to my best ability, I'm not responsible for any mistakes my end either.

This is **not** a magical 'fix my Mac' tool, it has a specific purpose, which is flashing correct payloads to a System Management Controller with incorrect firmware.

> ❗ **Do not** flash your SMC if you have no reason to.

## Acknowledgements

**⭐ Many Thanks To ⭐**
* Paul L Daniels for development help, and the kick to finish this project.
* Logi.wiki for the original work, which I could base this project on.
* EineWildeStehlampe for information and help regarding UEFI.
* theSmudge for being a great help verifying information.
* Nobluesky for verifying iMac board-id's.

> 🖼 Project icon by [KBuHT](https://macosicons.com/#/u/KBuHT) on macOSicons.\
> 💡 This tool is based on the work from  [logi.wiki](https://logi.wiki/index.php?title=SMC_flashing).\
>🎥 SMC Tool tested by Paul L Daniels on [YouTube](https://www.youtube.com/watch?v=q8LEh8C4iYo).

## Donate

<a href="https://www.buymeacoffee.com/Muerto"><img width="160" src="https://uc80e5ba3058c2d15b2a77972a8b.previews.dropboxusercontent.com/p/thumb/AB18JbfsN4REmFgvOrzwO3ooBl2K1VkxckN-h1H0qKcNhQDfIIROLC57mhfRHlNPZXBDEK7S3gHEnx6Uc35udaYsS-Mx66J6llYd_lSwfaIAntk3eynVXJNhd5nRHFDI1ncBuDVpVbrtKeQZlP2WPhejwCDH99YAFH8xcPef9q2d37EBjVV9-cK4cGUd7KmXCfa81wP6tXXV8r7-f_5L1c6tgs9HxLgqaDlAPXG8BcM9B6NRFdxlOsLGvYh9ESFE7fMb7dTrOu7PgsBsVrrIfTOxL8akUj2QiSGMJiZNXJrYrsW7mjKu_qQ-7Z-mhlZ2ZtY-FApmMFhfQrWj17D7hiXCemMdb_SaZCbaHBucMaJZ5Y1OPY3a6XlAxUCNJXSrFoI/p.png" alt="Buy Me A Coffee Logo" vspace="5" hspace="5"></a><a href="https://www.paypal.com/donate/?hosted_button_id=Z88F3UEZB47SQ"><img width="160" src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-200px.png" alt="PayPal Logo" vspace="5" hspace="5"></a>

---