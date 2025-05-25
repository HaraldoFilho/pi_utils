# Download Manager

Download files from an specified list of urls.

## Installation

In a linux terminal, execute the following commands:

```
cd /home/pi
git https://github.com/HaraldoFilho/pi_utils.git
cd pi_utils/download_manager
mkdir Downloads

```
or, instead of creating a Downloads directory, you can create a symbolic link to whateaver location you want:
```
ln -s <any_path> Dowloads
```

## Usage

Open the file _files_list_ and added the list of files you want in the following format:

```
<file_url_1> [output_file_name_1]
<file_url_2> [output_file_name_2]
<file_url_3> [output_file_name_3]
...
```

Note that _output_file_name_ is optional, if you don't define it, the script will use the names _file_1_, _file_2_...


_TIP: Add an entry on **user**'s crontab to automatically execute the script during late night, when you home internet is no being used. For example, add this to run everyday at 1:00 am:_

```
0 1 * * * /home/pi/pi_utils/download_manager/download.pl
```

