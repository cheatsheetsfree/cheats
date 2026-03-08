**🖨️ Printer Management Cheat Sheet (On-Prem AD + Cloud)**

**🧩 1. Core Concepts**

| **Concept** | **On-Prem AD** | **Cloud (Microsoft 365 / Azure AD)** |
|----|----|----|
| Directory Services | Active Directory | Azure Active Directory |
| Print Infrastructure | Print Server (Windows Server) | Universal Print (Microsoft 365) |
| Group Policy Management | GPMC | Intune / Endpoint Manager |
| Printer Discovery | AD-integrated printer objects | Universal Print portal |

**🏢 2. On-Premises Active Directory (AD) Printer Management**

**🛠️ Add Printer to AD**

1.  **Install printer on print server**

2.  **Share and publish to AD:**

    - Right-click printer \> **Properties \> Sharing**

    - Check ✅ **Share this printer**

    - Check ✅ **List in the directory**

**📍 View Published Printers in AD**

dsquery \* -filter "(objectClass=printQueue)"

**🖨️ Deploy Printer via Group Policy**

1.  Open Group Policy Management Console (GPMC)

2.  Go to:  
    User Configuration \> Policies \> Windows Settings \> Deployed
    Printers

3.  Right-click \> Deploy Printer \> Browse AD and select the shared
    printer.

✅ Make sure the Print Server is trusted and accessible from client
machines.

**🔄 Restart Print Spooler (Common Troubleshooting)**

net stop spooler

net start spooler

**☁️ 3. Cloud-Based Printer Management (Universal Print)**

**🎯 Requirements:**

- Microsoft 365 E3/E5 or Microsoft 365 Business Premium

- Universal Print Connector (for legacy printers)

**🔧 Setup Universal Print**

1.  **Register printer** via Universal Print Connector or using native
    Universal Print printers.

2.  Go to **Microsoft 365 Admin Center \> Universal Print**:

    - Publish printers to users or groups

    - Assign access control

**🧑‍💻 Assign Printers via Intune**

- Go to Microsoft Endpoint Manager \> Devices \> Configuration profiles

- Create **Device configuration profile**

  - Platform: Windows 10/11

  - Profile Type: Templates \> **Universal Print**

  - Assign to appropriate Azure AD groups

**🧾 4. Commands & Tools**

**🧰 Useful PowerShell (On-Prem)**

\# List printers on server

Get-Printer

\# Share a printer

Set-Printer -Name "HP123" -ShareName "OfficeHP" -Published \$true

\# Add printer to AD

Add-Printer -Name "OfficeHP" -Shared -ShareName "OfficeHP" -Published

\# View printer shares

Get-Printer \| Where-Object Shared -eq \$true

**🌐 PowerShell (Universal Print - Cloud)**

Requires Universal Print PowerShell module

Install-Module UniversalPrintManagement

Connect-UPService

\# List printers

Get-UPPrinter

\# Assign user to printer

Add-UPPrinterShare -PrinterId \<ID\> -DisplayName "Dept Printer"
-AllowUser \<user@domain.com\>

**📑 5. Best Practices**

| **Area**     | **Best Practice**                                    |
|--------------|------------------------------------------------------|
| Naming       | Use consistent naming (Dept-Location-Model)          |
| Group Policy | Use per-user GPOs for printer mapping                |
| Permissions  | Restrict printer access via AD groups                |
| Maintenance  | Centralize print servers for load management         |
| Cloud        | Use Universal Print for hybrid/Azure AD-only devices |

**🔧 Tools Summary**

| **Tool** | **Usage** |
|----|----|
| **Print Management Console** (printmanagement.msc) | Central GUI to manage printers and drivers |
| **Active Directory Users and Computers (ADUC)** | View published printers in AD |
| **Microsoft Endpoint Manager (Intune)** | Deploy Universal Print printers |
| **Universal Print Portal** | Admin dashboard for cloud-based printers |


**🛠️ GPO Deployment Script for Printers (On-Prem AD)**

This script and method lets you **deploy shared printers** from a
**Windows Print Server** using **Group Policy**.

**✅ Step 1: Prerequisites**

- Print Server running and printers shared + published to AD

- AD group or OU containing target users or computers

- Group Policy Management Console (GPMC)

**📜 PowerShell Script to Deploy Printer via Group Policy Preferences**

1.  **Create/modify a GPO** using GPMC

2.  **Target Path:**  
    User Configuration \> Preferences \> Control Panel Settings \>
    Printers

3.  **Use PowerShell (optional script automation):**

\# Variables

\$GPOName = "Deploy Office Printers"

\$PrinterPath = "\\PRINTSERVER\OfficeHP"

\$TargetOU = "OU=Users,DC=yourdomain,DC=com"

\# Create GPO

New-GPO -Name \$GPOName

\# Link GPO to OU

New-GPLink -Name \$GPOName -Target \$TargetOU

\# Add printer connection via GPP (manual GUI step required for exact
preferences)

Write-Host "Open GPMC and go to: User Config \> Preferences \> Control
Panel Settings \> Printers"

Write-Host "Right-click \> New \> Shared Printer \> Action: Update \>
Path: \$PrinterPath"

🧠 **Note**: Group Policy Preferences GUI doesn't expose all features to
PowerShell directly, so use script for setup + GUI for precision.

**☁️ Universal Print Connector Setup Guide**

This allows legacy printers to work with Microsoft Universal Print
(cloud printing).

**✅ Step-by-Step: Universal Print Connector**

**🧩 Requirements**

- Windows 10/11 Pro, Ent, or Windows Server (2016+)

- Azure AD join or hybrid

- M365 license that includes Universal Print

**📦 1. Download Connector**

- URL: <https://aka.ms/UPConnector>

**⚙️ 2. Install the Connector**

1.  **Run installer** as admin

2.  **Sign in** with a **Global Admin or Print Administrator** Azure AD
    account

3.  Register the connector with a name (e.g., NY-Print-Connector)

4.  Choose the printers you want to share to the cloud

**🔐 3. Assign Printer Access**

In **Microsoft 365 Admin Center \> Universal Print Portal**:

- Select printer

- Assign access to users or groups (Azure AD)

- Set location metadata (optional)

**💻 4. Client Setup (Users)**

- Windows 10/11 clients auto-discover printers via **Settings \>
  Printers \> Add a printer**

- Or use:

Add-Printer -ConnectionName "MicrosoftUniversalPrint/PrinterName"

**🧰 Helpful Commands**

\# Install UP management module

Install-Module UniversalPrintManagement

\# Connect to UP service

Connect-UPService

\# View all registered printers

Get-UPPrinter

\# Assign access

Add-UPPrinterShare -PrinterId \<ID\> -DisplayName "Dept Printer"
-AllowUser user@domain.com

