\`\`\`powershell

(Get-CimInstance -ClassName Win32_BIOS).SMBIOSBIOSVersion

\`\`\`

Alternative using WMI (older method):

\`\`\`powershell

**(Get-WmiObject -Class Win32_BIOS).SMBIOSBIOSVersion**

\`\`\`

\`\`\`powershell

**(Get-CimInstance -ClassName Win32_BIOS).SerialNumber**

\`\`\`

Alternative using WMI:

\`\`\`powershell

**(Get-WmiObject -Class Win32_BIOS).SerialNumber**

<span class="mark">This script below displays
cores-logicalcores-ram-videocontroler</span>

\# CPU (with logical cores)

\$cpu = Get-CimInstance Win32_Processor \|

Select-Object Name, NumberOfCores, NumberOfLogicalProcessors

\# RAM (in GB)

\$ram = Get-CimInstance Win32_PhysicalMemory \|

Measure-Object Capacity -Sum \|

Select-Object @{N='RAM_GB';E={\[math\]::Round(\$\_.Sum / 1GB, 2)}}

\# GPU (VRAM in GB)

\$gpu = Get-CimInstance Win32_VideoController \|

Select-Object Name, @{N='VRAM_GB';E={\[math\]::Round(\$\_.AdapterRAM /
1GB, 2)}}

\# Output

Write-Host "=== SYSTEM INFO ===" -ForegroundColor Cyan

Write-Host "\`nCPU:" -ForegroundColor Yellow

\$cpu \| Format-Table -AutoSize

Write-Host "\`nRAM:" -ForegroundColor Yellow

\$ram \| Format-Table -AutoSize

Write-Host "\`nGPU:" -ForegroundColor Yellow

\$gpu \| Format-Table -AutoSize

Bottom of Form
