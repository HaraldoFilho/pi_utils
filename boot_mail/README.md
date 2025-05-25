# Boot Mail for Raspberry Pi

This is a very simple script which sends an e-mail when a Raspberry Pi device boots.

## Installation

To run, the script requires **_Python 3_**, a user **_pi_** configured in the system and the packages **_mailutils_** and **_ssmtp_** installed and configured.

To install the script, login as **_pi_** and execute the following commands: 

```
cd /home/pi
git clone https://github.com/HaraldoFilho/pi_utils.git
cd pi_utils/boot_mail
./install.sh
```

To uninstall, just run:

```
cd /home/pi/pi_utils/boot_mail
./uninstall.sh
```

## Configuration

There is one file with default values that need to be modified by the user:

### _boot_mail.sh_

```
HOSTNAME=`hostname`
MAIL_FROM=""
MAIL_TO=""
```

## Usage

Just reboot the device and the script will run in background.


