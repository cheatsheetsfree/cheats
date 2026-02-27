

**Enable Root Login (GUI and SSH)**

Ubuntu 22.04 Jammy Jellyfish

This guide explains how to:

- Enable the root account

- Allow root login via SSH

- Allow root login via the Desktop GUI (GDM)

⚠️ **Security Warning:** Enabling direct root login is not recommended
for production systems. Use with caution.

**1. Enable the Root Account**

Before allowing root login (SSH or GUI), you must set a root password.

sudo passwd root

- Enter your current user password when prompted.

- Set and confirm a new password for the root user.

**2. Enable Root Login via SSH**

**Step 1: Open the SSH configuration file**

sudo nano /etc/ssh/sshd_config

**Step 2: Modify the PermitRootLogin setting**

Find the line:

PermitRootLogin prohibit-password

or

\#PermitRootLogin prohibit-password

Change it to:

PermitRootLogin yes

**Step 3: Save and exit**

In nano:

- Press Ctrl + X

- Press Y

- Press Enter

**Step 4: Restart the SSH service**

sudo systemctl restart ssh

Root login via SSH is now enabled.

**3. Enable Root Login via GUI (GDM)**

Even if root is enabled, Ubuntu blocks root login in the graphical
interface by default. You must modify the PAM configuration.

**Step 1: Edit the GDM PAM configuration file**

sudo nano /etc/pam.d/gdm-password

**Step 2: Comment out the line that disables root login**

Locate the line:

auth required pam_succeed_if.so user != root quiet_success

Comment it out by adding \# at the beginning:

\#auth required pam_succeed_if.so user != root quiet_success

**Step 3: Save and exit**

- Press Ctrl + X

- Press Y

- Press Enter

**Step 4: (If Needed) Allow Root in GDM Custom Configuration**

Open the GDM configuration file:

sudo nano /etc/gdm3/custom.conf

Add the following line if it does not already exist:

AllowRoot=true

Save and exit.

**Step 5: Reboot the System**

sudo reboot

You should now be able to log in as root from:

- SSH

- The graphical login screen

**Verification**

To verify root SSH access from another machine:

ssh root@your_server_ip


