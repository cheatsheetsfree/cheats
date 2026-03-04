**FreeBSD 15.0 Cheat Sheet**

**Basic Commands**

- **Check system version:**

- uname -a

- **View kernel logs:**

- dmesg

- **View system resource usage:**

- top

- **Check CPU and memory info:**

- sysctl -a \| grep -i cpu

- sysctl -a \| grep -i mem

**Filesystem Management (UFS)**

- **List all filesystems:**

- mount

- **Check disk usage:**

- df -h

- **Check free space in inodes:**

- df -i

- **List disk partitions:**

- gpart show

- **Create a new partition (replace ada0 with your disk):**

- gpart create -s gpt ada0

- gpart add -t freebsd-ufs -l mypartition ada0

- **Format a partition with UFS:**

- newfs -U /dev/ada0p1

- **Mount a UFS filesystem:**

- mount /dev/ada0p1 /mnt

- **Unmount a filesystem:**

- umount /mnt

- **List mounted filesystems:**

- fstat

- **Check filesystem integrity (for UFS):**

- fsck -y /dev/ada0p1

**Package Management**

- **Update package repository:**

- pkg update

- **Upgrade all packages:**

- pkg upgrade

- **Install a package (e.g., vim):**

- pkg install vim

- **Search for a package:**

- pkg search \<package-name\>

- **List installed packages:**

- pkg info

- **Remove a package:**

- pkg delete \<package-name\>

- **Clean unused package files:**

- pkg clean

**Networking Commands**

- **View network interfaces:**

- ifconfig

- **Configure network interface (e.g., em0):**

- ifconfig em0 inet 192.168.1.10 netmask 255.255.255.0

- **Show routing table:**

- netstat -r

- **Set the default gateway:**

- route add default 192.168.1.1

- **Check active connections:**

- netstat -an

- **Test network connectivity (ping):**

- ping 8.8.8.8

**User and Group Management**

- **Add a new user:**

- adduser

- **Add a user to a group:**

- pw groupmod \<group-name\> -m \<username\>

- **Delete a user:**

- pw userdel \<username\>

- **Change user password:**

- passwd \<username\>

**Service Management**

- **Start a service (e.g., SSHD):**

- service sshd start

- **Stop a service:**

- service \<service-name\> stop

- **Enable a service to start at boot:**

- sysrc \<service-name}\_enable=YES

- **View status of a service:**

- service \<service-name\> status

**System Logs**

- **View logs (syslog):**

- tail -f /var/log/messages

- **View specific log (auth log):**

- tail -f /var/log/auth.log

**Disk Management**

- **Partitioning with GPT (replace ada0 with your device):**

- gpart create -s gpt ada0

- gpart add -t freebsd-ufs -l mypartition ada0

- **List partitions:**

- gpart show

- **Backup disk partition table:**

- gpart backup ada0 \> partition_backup.txt

- **Restore disk partition table from a backup:**

- gpart restore -F ada0 \< partition_backup.txt

**Security & Maintenance**

- **Enable firewall (pf):**

- sysrc pf_enable=YES

- **Start the firewall:**

- service pf start

- **Check for installed security updates:**

- freebsd-update fetch

- freebsd-update install

- **Enable automatic security updates:**

- sysrc periodic_security_run_enable=YES

- **Check file permissions:**

- ls -l /path/to/file

**Useful Tips**

- **Configure UFS for performance:**  
  You can tune the **mount options** for UFS, such as enabling soft
  updates to enhance performance:  
  Edit /etc/fstab:

- /dev/ada0p1 / ufs rw,soft-updates 1 1

- **Backup UFS filesystem:**  
  Use the dump command to backup a UFS filesystem:

- dump -0L -f /path/to/backupfile /dev/ada0p1

- **Restore from backup:**

- restore -rf /path/to/backupfile


