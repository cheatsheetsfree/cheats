**Ubuntu Linux Command Cheat Sheet**

Ubuntu is a widely used Linux distribution built on Debian. It gives
users powerful control through the Terminal using command-line
instructions. This cheat sheet summarizes essential commands for
everyday system use, administration, networking, file handling, and
more.

**1. Getting Started**

**Open Terminal:**  
Ctrl + Alt + T

Ubuntu uses the **Bash shell**, where you type commands to interact
directly with the system.

**SYSTEM INFORMATION**

| **Command** | **What It Does**                                       |
|-------------|--------------------------------------------------------|
| uname -a    | Shows full system details (kernel, architecture, etc.) |
| hostname    | Prints the computer’s network name                     |
| uptime      | Shows how long the system has been running             |
| w           | Lists logged-in users                                  |
| whoami      | Displays current user                                  |
| free -h     | Shows memory usage in readable format                  |
| lshw        | Displays hardware information                          |
| history     | Lists previously used commands                         |
| man command | Opens manual page for a command                        |
| help        | Displays help for built-in commands                    |

**SYSTEM ADMINISTRATION**

| **Command**                     | **What It Does**                  |
|---------------------------------|-----------------------------------|
| sudo command                    | Run command with admin privileges |
| passwd                          | Change user password              |
| reboot                          | Restart system                    |
| shutdown now                    | Power off system safely           |
| service name start/stop/restart | Control services                  |
| env                             | Show environment variables        |
| jobs                            | Show background tasks             |

**FILE & DIRECTORY MANAGEMENT**

| **Command**    | **What It Does**                                 |
|----------------|--------------------------------------------------|
| pwd            | Show current directory                           |
| ls             | List directory contents                          |
| ls -la         | Show detailed file list (including hidden files) |
| cd folder      | Move into directory                              |
| cd ..          | Move to parent directory                         |
| mkdir folder   | Create directory                                 |
| rm file        | Delete file                                      |
| rm -r folder   | Delete directory and contents                    |
| cp source dest | Copy files                                       |
| mv source dest | Move or rename files                             |
| touch file     | Create empty file                                |
| stat file      | Show file details                                |

**PERMISSIONS**

| **Command** | **What It Does**        |
|-------------|-------------------------|
| chmod       | Modify file permissions |
| chown       | Change file owner       |
| chgrp       | Change group ownership  |

**PROCESS & SYSTEM MONITORING**

| **Command**  | **What It Does**                        |
|--------------|-----------------------------------------|
| top          | Real-time process viewer                |
| htop         | Improved process monitor (if installed) |
| ps aux       | Show all running processes              |
| vmstat       | System performance statistics           |
| dmesg        | Kernel messages                         |
| time command | Measure execution time                  |

**PACKAGE MANAGEMENT (APT & DPKG)**

Ubuntu uses APT for software management.

| **Command**          | **What It Does**           |
|----------------------|----------------------------|
| sudo apt update      | Refresh package list       |
| sudo apt upgrade     | Upgrade installed packages |
| sudo apt install pkg | Install package            |
| sudo apt remove pkg  | Remove package             |
| sudo apt autoremove  | Remove unused dependencies |
| dpkg -l              | List installed packages    |
| snap install pkg     | Install snap package       |

**NETWORKING**

| **Command**             | **What It Does**         |
|-------------------------|--------------------------|
| ip a                    | Show IP addresses        |
| ping host               | Test network connection  |
| ssh user@host           | Connect to remote server |
| scp file user@host:path | Secure file transfer     |
| wget url                | Download from internet   |

**FIREWALL (UFW)**

| **Command**         | **What It Does**      |
|---------------------|-----------------------|
| sudo ufw enable     | Turn firewall on      |
| sudo ufw disable    | Turn firewall off     |
| sudo ufw status     | Check firewall status |
| sudo ufw allow port | Open a port           |
| sudo ufw deny port  | Block a port          |

**USER MANAGEMENT**

| **Command**  | **What It Does**     |
|--------------|----------------------|
| adduser name | Create new user      |
| userdel name | Remove user          |
| usermod      | Modify user settings |
| id username  | Show user ID info    |
| groups       | Show user groups     |
| su username  | Switch user          |

**DISK MANAGEMENT**

| **Command**   | **What It Does**     |
|---------------|----------------------|
| df -h         | Disk space usage     |
| du -sh folder | Folder size          |
| mount         | Mount file system    |
| umount        | Unmount file system  |
| fdisk -l      | Show partitions      |
| lsblk         | List storage devices |

**TEXT PROCESSING**

| **Command**       | **What It Does**       |
|-------------------|------------------------|
| cat file          | Display file contents  |
| less file         | View file page by page |
| head file         | Show first lines       |
| tail file         | Show last lines        |
| grep pattern file | Search inside file     |
| sort file         | Sort lines             |
| wc file           | Count lines/words      |
| cut               | Extract columns        |
| sed               | Stream editing         |
| tr                | Replace characters     |
| uniq              | Remove duplicate lines |

Editors:

- nano

- vim

- vi

**COMPRESSION & ARCHIVING**

| **Command**           | **What It Does** |
|-----------------------|------------------|
| tar -cvf file.tar dir | Create archive   |
| tar -xvf file.tar     | Extract archive  |
| gzip file             | Compress file    |
| gunzip file.gz        | Decompress file  |
| zip archive.zip file  | Create zip       |
| unzip archive.zip     | Extract zip      |

**SHELL BUILT-INS**

| **Command**      | **What It Does**            |
|------------------|-----------------------------|
| echo             | Print text                  |
| alias            | Create shortcut             |
| unalias          | Remove shortcut             |
| export VAR=value | Set environment variable    |
| source file      | Run script in current shell |
| clear            | Clear terminal              |
| exit             | Close terminal              |

**USEFUL KEYBOARD SHORTCUTS**

| **Shortcut**     | **Function**              |
|------------------|---------------------------|
| Ctrl + C         | Stop running process      |
| Ctrl + Z         | Pause process             |
| Ctrl + D         | Exit terminal             |
| Ctrl + L         | Clear screen              |
| Ctrl + A         | Move to beginning of line |
| Ctrl + E         | Move to end of line       |
| Ctrl + R         | Search command history    |
| Tab              | Auto-complete command     |
| Up/Down Arrow    | Browse previous commands  |
| Ctrl + Shift + C | Copy                      |
| Ctrl + Shift + V | Paste                     |




