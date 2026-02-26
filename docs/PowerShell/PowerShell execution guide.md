

**🛡️ PowerShell Execution Policy – Simple Guide**

PowerShell execution policy is *not* a security boundary — it is a
safety feature that prevents **accidental** script execution. You can
always run trusted scripts using one-off overrides.

You can view policies with:

Get-ExecutionPolicy -List

**What the scopes mean:**

- **MachinePolicy / UserPolicy** — set by Group Policy (cannot be
  changed manually)

- **Process** — only for the current PowerShell session

- **CurrentUser** — only for the logged-in user

- **LocalMachine** — system-wide default

**🚦 Execution Policy Modes (Cheat-Sheet)**

| **Execution Policy** | **Description** |
|----|----|
| **Restricted** | Default on Windows. No scripts can run. Only interactive commands. |
| **AllSigned** | Scripts must be signed by a trusted publisher. |
| **RemoteSigned** | Scripts downloaded from the internet must be signed. Local scripts run freely. |
| **Unrestricted** | Scripts run, but warns before running downloaded scripts. |
| **Bypass** | No restrictions, no warnings. Useful for automation tools like SCCM, CI/CD, etc. |
| **Undefined** | No setting at this scope; PowerShell moves to next available scope. |

**🚀 Most-Used Execution Policy Commands**

**✔️ Check current execution policy**

Get-ExecutionPolicy

**✔️ Check all scopes**

Get-ExecutionPolicy -List

**✔️ Set execution policy for the current user only**

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

**✔️ Set execution policy system-wide**

Set-ExecutionPolicy RemoteSigned -Scope LocalMachine

**✔️ One-time run a script with ExecutionPolicy Bypass**

*(This does NOT change system settings)*

powershell.exe -ExecutionPolicy Bypass -File "C:\Path\script.ps1"

**⚡ PowerShell Startup / Temporary Policies**

**✔️ Start PowerShell with a temporary policy**

powershell.exe -ExecutionPolicy Bypass

**✔️ Run inline code with temporary Bypass**

powershell.exe -ExecutionPolicy Bypass -Command "Get-Process"

**📌 Additional Useful PowerShell Script-Running Commands**

**✔️ Run a script in the current directory:**

.\script.ps1

**✔️ Allow running unsigned local scripts (safe/typical)**

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

**✔️ Unblock scripts downloaded from the web:**

Unblock-File -Path "C:\Path\script.ps1"

**✔️ Check if a file is blocked:**

Get-Item "C:\Path\script.ps1" \| Select-Object -Property Name,
ZoneIdentifier

**🧭 Optional: PowerShell Security Best Practices**

- Only set **CurrentUser** instead of **LocalMachine** unless absolutely
  necessary.

- Prefer **RemoteSigned** instead of **Unrestricted**.

- Use **Bypass** only for trusted scripts (automation, CI/CD, internal
  tools).

- When downloading scripts, verify the source or signature.


