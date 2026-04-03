1\. Boot to Recovery Environment

Insert your Windows bootable USB/ISO.

Select Repair your computer -\> Troubleshoot -\> Command Prompt.

2\. Create EFI Partition with Diskpart

Type diskpart and press Enter.

list disk (Identify your system disk, usually Disk 0).

select disk 0 (Replace 0 with your disk number).

list partition (Check for space; if needed, shrink a partition: shrink
desired=100).

create partition efi size=100.

format quick fs=fat32 label="System".

assign letter=S (Or any unused letter).

exit.

3\. Rebuild Boot Files

Verify your Windows installation drive letter (e.g., dir c: or dir d:).

Run: bcdboot C:\Windows /s S: /f UEFI (Replace C: with your Windows
folder drive letter (Windows folder drive letter you can find it with
list volume) and S: with the letter assigned above).

4.Finish

Restart the computer and remove the media.
