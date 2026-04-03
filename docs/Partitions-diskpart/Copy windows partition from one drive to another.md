1.I use macrorit

2.I delete the windows partition on the drive and then I commit the
changes.

3.I click the windows partition that I want to copy and select copy and
then paste to unallocated space. commit changes.

4\. Close macrorit and eject both drives.

<span class="mark">All the operations above are done on different
computer with the two drives added as external drives (like usb
drives)</span>

5\. Take the drive that you copy windows partition and plug it into the
computer you wanted then boot to Windows usb installer and select repair
computer choose to troubleshoot. type diskpart and look for the system
partition (which is the efi partition) select partition and assign
letter S to it then do a list volume to make sure your windows partition
has letter C then exit diskpart.

6\. On the command prompt type this command bcdboot C:\Windows /s S: /f
UEFI

7\. exit twice and turn off computer.

8\. turn on go to F2 and select again the add boot.

The steps above work even when drive has triple boot Linux plus
hackingtosh. It will not affect those partitions or bootloaders.
