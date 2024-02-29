---
description: Guide to download and install DecriptOS
---

# Installation

### Downloading DecriptOS

You can download **DecriptOS 4.0** from [this link](https://e.pcloud.link/publink/show?code=XZddwnZKqsQIUYvIWJd3vHwFTlVcu0ViqVV). To verify the authenticity of the downloaded image, use the following hash values:

* MD5: a12239f09822f5608506758151b203d8
* SHA256: 009abc076d92cdf2d4abf72a783ca2167248c5d7d6b8899fe9c4cd128acd7312

### What's New Compared to the Previous Version

* Operating system based on Debian 12 BookWorm with Linux kernel 6.1.0-18;
* Updated DecriptOS manager for automatic system and tool updates (still in progress), managing the Tor proxy, changing DNS, and quickly closing all browsers;
* Added a super secure password generator;
* Added additional Firefox components for managing more types of crypto assets;
* uBlock Origin now integrates our list with over 1500 scam domains;
* New menu organization, creating categories for DecriptOS tools (system functionalities), OSInt tools (information gathering), and Wallets (crypto asset management);
* New tools in all categories;
* Removed the constraint on using the username `decripto`;
* Added even more firmware to increase compatibility and tools for everyday use.

### System Requirements

To use DecriptOS, your system or virtual machine must meet the following minimum requirements:

* Processor: 1 GHz or higher
* RAM: 2 GB or higher
* Disk Space: 25 GB or higher (for virtual machines)
* USB Capacity (if using via reboot): 8 GB or higher
* Internet connection for updates and downloading additional resources

### Booting in Live Mode

To start and use DecriptOS, follow these steps:

1. Download the DecriptOS ISO image from the link provided above.
2. (optional) Compare the hashes of the downloaded file.
3.  Create a bootable installation medium (e.g., a USB stick or a virtual machine) using the downloaded ISO image. 3.1 Copy the ISO file onto a USB stick where you have installed [Ventoy](https://www.ventoy.net/en/index.html) (recommended choice).

    3.2 To use via reboot by flashing the .iso file onto a USB:

    * Use a USB stick of at least 8GB.
    * To write the ISO onto the USB stick, use [Rufus](https://rufus.ie/it/) for Windows or [Unebootin](https://unetbootin.github.io/) for Mac OS:
    * Once the tool is downloaded, right-click and select "Open" (you may need to do this a couple of times).
    * Then select the DecriptOS .iso file and the USB stick on which you want to write the operating system.
    * Start the operation.
4.  Boot your computer by selecting to boot from the USB stick, typically by pressing `Alt` (on Mac) or `esc` or `F12` (on Windows) to enter the boot menu.

    * On Mac, select the `EFI Boot` media:
    * On Windows, select the `USB - UEFI OS` media:

    4.1. If booting the computer via BIOS with `F2`, go to the `Save & Exit` tab and select the USB stick with `UEFI`
5. From the boot menu, choose "Live system" to try the distro.

### Operating System Installation

To install DecriptOS, follow these steps:

1. Download the DecriptOS ISO image from the link provided above.
2. (optional) Compare the hashes of the downloaded file.
3. Create a bootable installation medium (e.g., a USB stick or a virtual machine) using the downloaded ISO image (use the instructions provided for booting in live mode).
4. From the boot menu, choose "Install DecriptOS" to start the installation on your computer, following the on-screen instructions;
   * Leave the root password field empty so that the user you create will be enabled to use administrator commands with `sudo`;
   * You can now set the username you prefer; it's no longer necessary to use the username `decripto`;
5. Start the distro.

**Or**

1. Follow the steps for booting in live mode;
2. Try the distro and, if desired, use the shortcut on the Desktop to start the installation;
3. Follow the installation wizard steps and enjoy DecriptOS.

### Creating a Virtual Machine with VirtualBox

1. Create a new virtual machine with the following settings:
   * At least 2 GB of RAM;

* At least 2 cores (depending on the main processor, if you have at least 16 cores available, assign at least 4 to the virtual machine);
* Create a virtual disk of at least 25 GB;

2. In the storage menu, select the optical drive and choose the DecriptOS .iso file as the disk;
3. (optional) Customize the virtual machine:
   * Set clipboard and drag\&drop to bidirectional (in the General - Advanced section);
   * Enable 3D acceleration (in the Display section);
   * Enable USB 3.0 (in the USB section);
4. Start the virtual machine;
5. From the boot menu, choose "Live system" to try the distro or "Install DecriptOS" to start the installation on your computer, following the instructions;
6. If installing the distro:
   * Leave the root password field empty so that the user you create will be enabled to use administrator commands with `sudo`;
   * You can now set the username you prefer; it's no longer necessary to use the username `decripto`;
7. Start the distro;
8. (optional) For a better user experience, install the VirtualBox Guest Additions. To do so:
   * From the top menu, click on "Devices" and "Insert Guest Additions CD image";
   * You should now see, by opening the file manager, a CD inserted, copy its contents into a folder, for example inside the Documents folder;
   * Open your terminal and type the commands `cd Documents` to position yourself in the Documents folder and have access to the files contained therein;
   * Type the command `chmod +x VBoxLinuxAdditions.run` to give execution permissions to the script;
   * Launch the script with `sudo ./VBoxLinuxAdditions.run`, typing the password you set for the user decripto during installation;
   * (optional) At the end of the script execution, delete all the files you copied into the Documents folder;
   * Restart the virtual machine.

### Things to Do on Startup (Live)

1. Change the keyboard layout by going to Menu --> Preferences --> Keyboard --> Layouts --> + --> Italian, or, through the terminal, type `setxkbmap it`
2. Set a password for the keyring from the terminal with `sudo passwd` and then enter it (if desired). The other default passwords are `decripto`.
3. Connect to WiFi (if using USB)
4. Check the date and time, if necessary, synchronize the operating system with the current time zone.
5. Update the operating system; in the terminal type `sudo apt update`, press enter, once finished type `sudo apt upgrade` and press enter, if necessary when prompted type `yes` for the additional packages.
6. Configure your credentials on git by going to the terminal and typing `git config --global user.name "Your Name"` and then `git config --global user.email youremail@email.com`.
7. If installed in VirtualBox, to avoid connectivity issues, remove the mac\_random.sh script by going to preferences -> startup and unchecking the corresponding item.

***
