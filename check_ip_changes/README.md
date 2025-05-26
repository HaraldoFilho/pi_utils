# Check IP Changes

These are scripts to check if the IP addresses of a given machine in a dynamic IPs network have changed. It sends e-mails if a change is detected.

## Installation

In a linux terminal, execute the following commands:

```
cd /home/pi
git https://github.com/HaraldoFilho/pi_utils.git
cd pi_utils/check_ip_changes
mv _config.sh config.sh

```

## Configuration

Open the file _config.sh_ for edit and include the _from_ and _to_ e-mail addresses in its respective variables.

## Usage

There are two scripts to run:

- **check_private_ip_change.sh**: Used to check, in a private dynamic IPs network, if the IP address assigned to the machine by the router has changed.
- **check-public-ip-change.sh**: Used to check if the IP address assigned to the machine or router by the ISP has changed.

The scripts don't provide any output in the terminal, if a change has been detected an e-mail will be sent with the new IP.

_TIP: To periodically check for changes, include one of the scripts in the **user**'s crontab. Do not include in the root crontab, because the script will not run._

