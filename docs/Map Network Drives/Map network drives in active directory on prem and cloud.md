**🗂️ Cheat Sheet: Mapping Network Drives in Active Directory (On-Prem +
Cloud)**

**🧩 1. Concept Overview**

| **Environment** | **Mapping Tool** | **User Type** | **Drive Type** |
|----|----|----|----|
| On-Prem AD | Group Policy Preferences (GPP) | Domain-joined users | File shares (\server\share) |
| Azure AD / Intune | PowerShell + Intune Scripts | Cloud-only or hybrid users | Azure file shares, OneDrive, or \IP\share via VPN |

**🏢 2. On-Prem AD: Map Drives via Group Policy**

**✅ Method: Group Policy Preferences (Recommended)**

**📍 Location:**

User Configuration \> Preferences \> Windows Settings \> Drive Maps

**➕ Add a New Mapped Drive**

1.  Action: **Update**

2.  Location: \\SERVER\Share

3.  Drive Letter: Select from dropdown

4.  Label: e.g., "Finance Share"

5.  Reconnect: ✅ Optional

6.  Use item-level targeting (recommended) to target by group or OU

**🛠️ PowerShell Backup Option:**

New-PSDrive -Name "S" -PSProvider FileSystem -Root "\\server\share"
-Persist

🔐 This will persist across reboots only if run as the user.

**☁️ 3. Cloud (Azure AD / Intune): Map Drives**

**🎯 Common Use Cases:**

- Hybrid Azure AD-joined devices (with line of sight to on-prem file
  servers)

- Azure Files via SMB

- OneDrive Known Folder Move

**✅ Option 1: Deploy Script via Intune**

**🔧 PowerShell Script:**

\$DriveLetter = "S:"

\$NetworkPath = "\\yourserver.domain.com\Share"

If (!(Test-Path -Path "\$DriveLetter")) {

New-PSDrive -Name "S" -PSProvider FileSystem -Root \$NetworkPath
-Persist

}

**🎯 Deploy via Intune:**

- Go to **Microsoft Endpoint Manager Admin Center**

- Devices \> Scripts \> Add \> **Windows 10/11 PowerShell script**

- Upload your .ps1 script

- Assign to Azure AD user/device group

**✅ Option 2: Azure File Share Mapping**

1.  Create an **Azure File Share**

2.  Assign RBAC to users

3.  Get connection script from Azure portal:

    - Storage Account \> File Share \> Connect \> Windows

**Example Script:**

net use Z: \\yourstorageaccount.file.core.windows.net\sharename
/user:Azure\yourusername yourpassword

🔐 Tip: Store credentials securely or use **Azure AD Kerberos** for auth
(for hybrid environments).

**✅ Option 3: OneDrive as Network Drive**

- Automatically redirect **Desktop, Documents, Pictures**

- Enable via **Intune \> Device Configuration \> OneDrive**

**Enable Known Folder Move:**

- Intune \> **Configuration Profiles** \> Settings Catalog \> OneDrive

  - Enable: “Silently move Windows known folders to OneDrive”

**🧠 4. Best Practices**

| **Practice** | **Why** |
|----|----|
| Use item-level targeting (GPO) | Apply drives only to relevant users |
| Don’t hard-code drive letters | Avoid conflicts |
| Validate file server availability (VPN or Azure) | Avoid errors on startup |
| For cloud, use Azure Files with AD Kerberos | Secure + manageable |
| Use OneDrive when possible | Native, backed-up, secure |

**🔧 5. Common Troubleshooting**

| **Issue**                  | **Fix**                                     |
|----------------------------|---------------------------------------------|
| Drive not mapping          | Check user permissions & network path       |
| Credentials prompt         | Ensure proper AD or Azure AD auth method    |
| Drive disappears           | Use /persistent:yes or GPP set to "Replace" |
| Intune scripts not working | Use correct context (user/system)           |
