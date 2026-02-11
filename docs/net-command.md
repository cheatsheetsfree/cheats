**🧾 net Command Cheat Sheet (CMD)**

**🔹 General Syntax**

net \[command\] \[options\]

List all available net commands:

net help

Help for a specific command:

net help user

**👤 User Management**

**List local users**

net user

**View a user**

net user username

**Create a local user**

net user username password /add

**Delete a local user**

net user username /delete

**Change password**

net user username newpassword

**👥 Group Management**

**List local groups**

net localgroup

**View members of a local group**

net localgroup "Administrators"

**Add user to local group**

net localgroup "Administrators" DOMAIN\username /add

**Remove user from local group**

net localgroup "Administrators" DOMAIN\username /delete

**🌐 Domain Group Management (Active Directory)**

**List domain groups**

net group /domain

**View members of a domain group**

net group "GroupName" /domain

**Add user to a domain group**

net group "GroupName" username /add /domain

**Remove user from a domain group**

net group "GroupName" username /delete /domain

📌 Requires domain privileges.

**🖥️ Computer / Domain Info**

**View workstation info**

net config workstation

**View domain info**

net config server

**View domain controllers**

net time /domain

**🔐 Shares**

**List shared folders**

net share

**Create a share**

net share ShareName=C:\Folder

**Remove a share**

net share ShareName /delete

**🔑 Network Connections**

**View mapped drives**

net use

**Map a network drive**

net use Z: \\Server\Share

**Map drive with credentials**

net use Z: \\Server\Share /user:DOMAIN\username

**Remove a mapped drive**

net use Z: /delete

**🧑‍💻 Services**

**List services**

net start

**Start a service**

net start servicename

**Stop a service**

net stop servicename

**🔍 Sessions & Files (Servers)**

**View connected sessions**

net session

**View open files**

net file

(Requires admin rights)

**🧠 Pro Tips**

- Use **quotes** for names with spaces

- net commands respect **UAC** — run CMD as admin

- Great for **quick fixes**, **troubleshooting**, and **legacy scripts**

- For modern automation → PowerShell is better, but net is everywhere

**⚡ Quick Reference Table**

| **Task**                 | **Command**                        |
|--------------------------|------------------------------------|
| Create local user        | net user /add                      |
| Add user to local admins | net localgroup Administrators /add |
| Add user to AD group     | net group /domain                  |
| Map network drive        | net use                            |
| List shares              | net share                          |
| Start/stop service       | net start / stop                   |


------------------------------------------------------------------------

**1️⃣ One-Page Printable net Command Cheat Sheet (PDF-ready)**

You can **copy-paste this into Word / Notepad / Markdown** and export as PDF.

------------------------------------------------------------------------

**🧾 Windows net Command — Quick Admin Cheat Sheet**

**🔹 Help**

net help

net help user

------------------------------------------------------------------------

**👤 Users (Local)**

net user

net user username

net user username password /add

net user username /delete

net user username newpassword

**👥 Local Groups**

net localgroup

net localgroup "Administrators"

net localgroup "Administrators" DOMAIN\user /add

net localgroup "Administrators" DOMAIN\user /delete

------------------------------------------------------------------------

**🌐 Domain Groups (Active Directory)**

net group /domain

net group "GroupName" /domain

net group "GroupName" username /add /domain

net group "GroupName" username /delete /domain

------------------------------------------------------------------------

**🔐 Shares**

net share

net share ShareName=C:\Folder

net share ShareName /delete

------------------------------------------------------------------------

**🔑 Network Drives**

net use

net use Z: \\Server\Share

net use Z: \\Server\Share /user:DOMAIN\user

net use Z: /delete

------------------------------------------------------------------------

**🧑‍💻 Services**

net start

net start ServiceName

net stop ServiceName

------------------------------------------------------------------------

**🖥️ System / Domain Info**

net config workstation

net config server

net time /domain

------------------------------------------------------------------------

📌 **Run CMD as Administrator**  
📌 **Quotes required** for names with spaces







**2️⃣ net vs PowerShell (Modern Replacement Map)**

This helps you **translate legacy commands** into modern PowerShell.

| **Task**            | **net Command**   | **PowerShell**       |
|---------------------|-------------------|----------------------|
| List users          | net user          | Get-LocalUser        |
| Create user         | net user /add     | New-LocalUser        |
| Add to local admins | net localgroup    | Add-LocalGroupMember |
| Add to AD group     | net group /domain | Add-ADGroupMember    |
| Map drive           | net use           | New-PSDrive          |
| Start service       | net start         | Start-Service        |
| Stop service        | net stop          | Stop-Service         |
| List shares         | net share         | Get-SmbShare         |

**🧠 Rule of thumb**

- **CMD / break-fix / legacy scripts** → net

- **Automation / scale / future-proofing** → PowerShell

------------------------------------------------------------------------

**3️⃣ Real-World Admin Scenarios (What you’ll actually use)**

**🔧 Scenario 1: New hire can’t access a system**

net group "VPN Users" jsmith /add /domain

------------------------------------------------------------------------

**🔧 Scenario 2: Temporarily give local admin rights**

net localgroup Administrators DOMAIN\jsmith /add

(Remember to remove later 👀)

------------------------------------------------------------------------

**🔧 Scenario 3: Map a drive for troubleshooting**

net use Z: \\FS01\HR /user:DOMAIN\adminuser

------------------------------------------------------------------------

**🔧 Scenario 4: Restart a stuck service (fast!)**

net stop spooler

net start spooler

------------------------------------------------------------------------

**🔧 Scenario 5: Check who’s connected to a server**

net session

net file

(Admin on server required)

**🔧 Scenario 6: Quick AD group membership check**

net group "Domain Admins" /domain

------------------------------------------------------------------------




