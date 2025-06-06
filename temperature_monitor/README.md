# Temperature Monitor for Raspberry Pi

This is a script to monitor the temperature of a Raspberry Pi. It sends warning e-mails when the temperature is above a threshold level and shuts down the device if above a critical level.

## Installation

To run, the script requires **_Python 3_**, a user **_pi_** configured in the system and the packages **_vcgencmd_**, **_mailutils_** and **_ssmtp_** installed and configured.

To install vcgencmd:

```
git clone https://github.com/nicmcd/vcgencmd.git
cd vcgencmd
sudo python3 setup.py install
```

To install the script, login as **_pi_** and execute the following commands: 

```
cd /home/pi
git clone https://github.com/HaraldoFilho/pi_utils.git
cd pi_utils/temperature_monitor
./install.sh
```

The file _/etc/sudoers_ will be automatically opened for edit. Add the following line to it:

```
pi   ALL=(ALL) NOPASSWD: /sbin/shutdown
```

This will permit that the device can be shutted down without asking for a password.

To uninstall, just run:

```
cd /home/pi/pi_utils/temperature_monitor
./uninstall.sh
```

## Configuration

There are two configuration files with default values that can be modified by the user:

### _config.py_

```
# Parameters:

# MON_PERIOD    : Number of seconds the temperature is read. 
# MON_INTERVAL  : Number of seconds the temperature is checked. 
# TEMP_HIGH     : Value in Celsius degree on that a warning e-mail is sent if temperature is above it.
# TEMP_CRITICAL : Value in Celsius degree on that the device is shutted down to protect it.

MON_PERIOD     = 1
MON_INTERVAL   = 600
TEMP_HIGH      = 85.0
TEMP_CRITICAL  = 90.0
```

### _mail.py_

```
# Parameters:

# FROM          : Sender's e-mail address. 
# TO            : Recipient's e-mail address.
# TEMP_HIGH     : Message when the temperature is above the threshold. 
# TEMP_NORMAL   : Message when the temperature is back to normal. 
# TEMP_CRITICAL : Message when the temperature is above the critical level. 

FROM          = ""
TO            = ""
TEMP_HIGH     = "DEVICE TEMPERATURE IS TOO HIGH!"
TEMP_NORMAL   = "Device temperature is back to normal"
TEMP_CRITICAL = "DEVICE TEMPERATURE IS CRITICAL!!! Shutting down..."
```

## Usage

Just reboot the device and the script will run in background.


