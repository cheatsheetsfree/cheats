**Break/Fix Computer Technician Cheat Sheet**

**What “Break/Fix” Means**

**Break/Fix** is an IT service model where **a technician repairs
something only after it breaks** instead of maintaining it continuously.

- **Break** → Device stops working or has a problem

- **Fix** → Technician diagnoses and repairs it

The term became common in **1990s IT service contracts** when companies
compared:

| **Model**            | **Description**                          |
|----------------------|------------------------------------------|
| **Break/Fix**        | Pay when something breaks                |
| **Managed Services** | Pay monthly for monitoring & maintenance |

Today it’s widely used by **IT technicians, MSPs, repair shops, and help
desks**.

**Universal Break/Fix Troubleshooting Flow**

This applies to **any computer**.

**1️⃣ Verify the Problem**

Ask the user:

- What happened?

- When did it start?

- Any recent update, drop, liquid spill, power outage?

**2️⃣ Basic Checks**

Always check these first:

✔ Power connected  
✔ Monitor/display working  
✔ Keyboard & mouse working  
✔ Internet connected  
✔ Reboot system

**3️⃣ Identify the Category**

Most issues fall into:

| **Category** | **Examples**                   |
|--------------|--------------------------------|
| Hardware     | RAM, SSD, battery, motherboard |
| Software     | Windows errors, driver issues  |
| Network      | WiFi, DNS, router              |
| User error   | Misconfiguration               |

**4️⃣ Test & Isolate**

Swap parts if possible:

- RAM

- power adapter

- storage drive

- display cable

**5️⃣ Repair / Replace**

Options:

- reinstall OS

- replace hardware

- update drivers

- firmware update

**6️⃣ Document**

Write down:

- symptoms

- cause

- fix

- parts replaced

**Laptop Break/Fix Cheat Sheet**

**Laptop Won’t Power On**

Check:

1.  Power adapter voltage

2.  Battery condition

3.  Charging port

4.  DC jack

5.  Motherboard power rail

Quick test:

- Remove battery

- Hold power button 30 seconds

- Try AC only

Possible fixes:

- replace charger

- replace battery

- replace DC jack

- motherboard repair

**Laptop Turns On but No Display**

Check:

- brightness

- external monitor

- RAM seating

- GPU failure

- LCD cable

Test:

Laptop ON + Caps Lock LED?  
Yes → Display problem  
No → System not posting

Possible fixes:

- reseat RAM

- replace screen

- replace LCD cable

**Laptop Overheating / Shutting Down**

Common causes:

- dust buildup

- dried thermal paste

- failing fan

Fix:

- clean cooling system

- replace thermal paste

- replace fan

**Laptop Keyboard Not Working**

Test:

- external keyboard

- keyboard driver

- keyboard ribbon cable

Fix:

- reconnect cable

- replace keyboard

**Laptop Battery Not Charging**

Check:

- adapter voltage

- charging port

- battery health

- BIOS battery detection

Fix:

- replace battery

- replace DC jack

**Desktop Break/Fix Cheat Sheet**

**Desktop Won’t Power On**

Check order:

1.  Power outlet

2.  PSU switch

3.  PSU cable

4.  Motherboard power connector

5.  Power button cable

Quick test:

- paperclip PSU test

Possible fixes:

- replace PSU

- replace motherboard

- replace front panel switch

**Desktop Turns On but No POST**

Signs:

- no beep

- no display

Check:

- RAM

- GPU

- CPU seating

Test method:

Minimal boot:  
Motherboard  
CPU  
1 RAM stick  
PSU

Fix:

- reseat RAM

- replace GPU

- reset CMOS

**Desktop Random Reboots**

Common causes:

- overheating

- PSU failure

- RAM errors

Tools:

- BIOS hardware monitor

- memory test

- PSU tester

Fix:

- replace PSU

- replace RAM

- reapply thermal paste

**No Internet**

Check:

1.  Ethernet cable

2.  Network adapter

3.  IP configuration

4.  Router

Commands (Windows):

ipconfig  
ping 8.8.8.8  
ping google.com  
ipconfig /release  
ipconfig /renew

**Common Tools for Break/Fix Technicians**

**Hardware Tools**

- screwdriver kit

- multimeter

- PSU tester

- thermal paste

- USB boot drive

- external SSD enclosure

**Software Tools**

Useful utilities:

- **Hiren's BootCD**

- **MemTest86**

- **CrystalDiskInfo**

- **Malwarebytes**

- **Rufus**

**Common Break/Fix Issues (Top 10)**

| **Problem**   | **Typical Fix**   |
|---------------|-------------------|
| Slow computer | SSD upgrade       |
| No boot       | Repair bootloader |
| Overheating   | Clean fans        |
| Blue screen   | Driver / RAM      |
| No WiFi       | Driver reinstall  |
| Keyboard dead | Replace keyboard  |
| Battery dead  | Replace battery   |
| Disk failure  | Replace SSD       |
| No display    | RAM reseat        |
| Virus         | Malware removal   |

**Quick Diagnostic Rule (Technician Trick)**

**80% of problems are caused by:**

1.  RAM

2.  Storage drive

3.  Power supply

4.  Overheating

5.  Drivers

Check those **first**.

**Bonus: Break/Fix Technician Workflow (Professional Shops)**

1.  Intake ticket

2.  Visual inspection

3.  Quick power test

4.  Hardware diagnostic

5.  Software diagnostic

6.  Repair estimate

7.  Customer approval

8.  Repair

9.  QA testing

10. Documentation
**1️⃣ Fast Computer Troubleshooting Flowchart (Technician Method)**

This is the **standard logic used by IT repair technicians**.

START  
│  
├─► Does the computer power on?  
│ │  
│ ├─ NO  
│ │ Check:  
│ │ • Power outlet  
│ │ • Power adapter / PSU  
│ │ • Power button  
│ │ • Motherboard power  
│ │  
│ └─ YES  
│  
├─► Any display on screen?  
│ │  
│ ├─ NO  
│ │ Check:  
│ │ • Monitor  
│ │ • Display cable  
│ │ • GPU  
│ │ • RAM  
│ │  
│ └─ YES  
│  
├─► Does system boot to OS?  
│ │  
│ ├─ NO  
│ │ Check:  
│ │ • Boot drive  
│ │ • Boot order  
│ │ • OS corruption  
│ │  
│ └─ YES  
│  
├─► System slow or unstable?  
│ │  
│ ├─ YES  
│ │ Check:  
│ │ • Disk health  
│ │ • Malware  
│ │ • RAM usage  
│ │ • Overheating  
│ │  
│ └─ NO  
│  
END (System OK)

Technicians call this **Power → POST → Boot → OS model**.

**2️⃣ Motherboard Beep Codes Cheat Sheet**

When a computer **fails POST**, the motherboard BIOS sends **beep
codes**.

Common BIOS vendors:

- **American Megatrends BIOS (AMI)**

- **Phoenix BIOS**

- **Award BIOS**

**AMI BIOS Beep Codes**

| **Beeps** | **Meaning**            |
|-----------|------------------------|
| 1         | RAM refresh failure    |
| 2         | RAM parity error       |
| 3         | Base memory failure    |
| 4         | System timer failure   |
| 5         | CPU error              |
| 6         | Keyboard controller    |
| 7         | CPU exception          |
| 8         | GPU / video memory     |
| 9         | BIOS ROM checksum      |
| 10        | CMOS shutdown register |
| 11        | Cache memory error     |

**Award BIOS Beep Codes**

| **Beep Pattern** | **Meaning** |
|------------------|-------------|
| 1 long, 2 short  | GPU problem |
| 1 long, 3 short  | GPU or VRAM |
| Continuous beep  | RAM issue   |
| Repeating short  | PSU issue   |

**Phoenix BIOS Codes**

Phoenix uses **3-number patterns**.

Example:

1-1-3 = CMOS read/write failure  
1-1-4 = BIOS checksum error  
1-2-1 = motherboard timer error  
1-3-1 = RAM refresh problem

**3️⃣ One-Page Break/Fix Technician Checklist**

Technicians often follow this **real repair workflow**.

**Step 1 — Visual Inspection**

Check for:

✔ liquid damage  
✔ burnt smell  
✔ broken ports  
✔ loose cables  
✔ swollen battery

**Step 2 — Power Test**

Check:

- PSU

- adapter

- charging LED

- motherboard LED

Laptop trick:

remove battery  
hold power 30 sec  
boot AC only

**Step 3 — POST Test**

Check:

- beep codes

- keyboard lights

- fan spin

If **no POST**:

Test minimum hardware:

CPU  
1 RAM stick  
PSU  
Motherboard

**Step 4 — Boot Test**

If POST works:

Check:

- SSD/HDD detection

- BIOS boot order

- bootloader

Tools technicians use:

- **Hiren's BootCD**

- **Rufus**

**Step 5 — Hardware Diagnostics**

Check:

RAM test  
→ **MemTest86**

Disk health  
→ **CrystalDiskInfo**

Temperature  
→ **HWMonitor**

**Step 6 — Software Repair**

Possible fixes:

- reinstall drivers

- remove malware

- Windows repair

- OS reinstall

Malware removal tool:

- **Malwarebytes**

**4️⃣ Top 10 Real Problems Repair Shops See**

| **Issue**          | **Typical Fix**  |
|--------------------|------------------|
| Slow PC            | SSD upgrade      |
| Laptop overheating | fan cleaning     |
| No display         | RAM reseat       |
| Blue screen        | driver update    |
| Battery dead       | replace battery  |
| Disk failure       | replace SSD      |
| Charging problem   | replace DC jack  |
| Keyboard dead      | replace keyboard |
| Virus infection    | malware removal  |
| Windows crash      | OS reinstall     |

**5️⃣ Technician “Golden Rule”**

Experienced techs remember this:

**Most computer problems come from only a few components.**

**Failure Rate Ranking**

1️⃣ Storage drive (HDD/SSD)  
2️⃣ RAM  
3️⃣ Power supply  
4️⃣ Cooling system  
5️⃣ Drivers / OS corruption

Check these **first** to save time.
**1️⃣ The 10-Minute Diagnostic Method (Used in Repair Shops)**

Many technicians follow a **fast triage routine** to identify the likely
failure in **~10 minutes**.

**Minute 1–2: Visual Inspection 👀**

Check for:

- liquid damage

- burnt smell

- broken ports

- swollen battery (laptops)

- loose RAM / cables

- dust clogging fans

If there’s visible liquid corrosion → often **motherboard repair or
replacement**.

**Minute 3–4: Power Test 🔌**

Test power basics.

Desktop:

- check PSU switch

- check PSU fan spin

- check motherboard LED

Laptop:

- test with AC adapter only

- remove battery

- hold power button 30 seconds (power reset)

If **no signs of power**, suspect:

- PSU (desktop)

- charger or DC jack (laptop)

- motherboard power circuit

**Minute 5–6: POST Test 🧠**

Does the system reach **POST (Power-On Self-Test)**?

Signs of POST:

- keyboard LEDs flash

- manufacturer logo

- BIOS screen

- beep codes

If not, check:

- RAM

- GPU

- CPU

- motherboard

**Minute 7–8: Boot Test 💾**

If POST works:

Check boot device.

Questions:

- Is the SSD detected in BIOS?

- Does the OS start loading?

Common failures:

- corrupted bootloader

- dead SSD/HDD

- OS crash

Disk health can be checked with **CrystalDiskInfo**.

**Minute 9–10: Performance Check ⚙️**

If system boots but is slow:

Check:

- CPU usage

- RAM usage

- disk usage

- malware

Common tools technicians use:

- **HWMonitor**

- **Malwarebytes**

- **MemTest86**

**2️⃣ How Technicians Quickly Detect a Dead Motherboard**

A motherboard is suspected when **multiple core components fail
simultaneously**.

**Typical Symptoms**

⚠️ Power button pressed but:

- no fan spin

- no LED

- no POST

- no beep

OR

⚠️ Fans spin but:

- no display

- no keyboard lights

- no POST

**Quick Motherboard Test**

Minimal hardware test:

Motherboard  
CPU  
1 RAM stick  
PSU

If still **no POST → motherboard likely bad**.

**3️⃣ Laptop Motherboard Failure Signs**

Laptop boards fail more often because of:

- heat

- liquid spills

- charging circuit damage

**Common Symptoms**

| **Symptom**             | **Likely Cause**    |
|-------------------------|---------------------|
| No power                | power IC failure    |
| Turns on then off       | VRM issue           |
| No charging             | charging controller |
| No display but fan runs | GPU failure         |
| USB ports dead          | southbridge issue   |

These are **common in thin laptops**.

**4️⃣ Most Profitable Break/Fix Repairs 💰**

Repair shops make most money on **quick high-value repairs**.

**Top 10 profitable jobs**

| **Repair**                | **Why profitable**   |
|---------------------------|----------------------|
| SSD upgrade               | fast and high demand |
| RAM upgrade               | quick install        |
| Virus removal             | high service fee     |
| Laptop fan cleaning       | easy but valuable    |
| Thermal paste replacement | improves performance |
| Screen replacement        | common laptop repair |
| Battery replacement       | fast repair          |
| DC jack repair            | moderate skill       |
| Keyboard replacement      | frequent issue       |
| OS reinstall              | quick service        |

**5️⃣ The “Rule of 5” (Technician Shortcut)**

Most computer problems come from only **five areas**:

1️⃣ Storage drive  
2️⃣ RAM  
3️⃣ Power supply  
4️⃣ Overheating  
5️⃣ Operating system

Checking these first solves **~70–80% of cases**.

**6️⃣ Professional Break/Fix Toolkit**

Hardware tools:

- precision screwdriver kit

- multimeter

- thermal paste

- USB-SATA adapter

- compressed air

Software toolkit USB usually includes:

- **Hiren's BootCD**

- **Rufus**

- **CrystalDiskInfo**

- **MemTest86**

**1️⃣ Laptop Troubleshooting Flow (Professional Method)**

Technicians usually follow this **layered approach**:

Power → POST → Display → Boot → OS → Performance

**Step 1 — Power Check 🔌**

Symptoms:

| **Symptom**            | **Likely Cause**           |
|------------------------|----------------------------|
| No lights              | Charger / DC jack          |
| Lights but no response | Power button / motherboard |
| Turns on then off      | RAM / CPU / overheating    |

Tests:

- Remove battery

- Hold power button 30 seconds

- Test charger voltage

- Try AC only

**Step 2 — POST Check 🧠**

POST = **Power-On Self-Test**

Signs POST is working:

- manufacturer logo appears

- keyboard lights flash

- BIOS screen accessible

- beep codes

Common POST failures:

| **Component** | **Symptoms**       |
|---------------|--------------------|
| RAM           | no POST            |
| CPU           | shutdown instantly |
| GPU           | no display         |
| Motherboard   | no response        |

**Step 3 — Display Check 🖥**

If laptop powers on but screen is black:

Tests:

1.  Connect external monitor

2.  Shine flashlight on screen

3.  Adjust brightness

4.  Reseat RAM

Possible causes:

| **Cause**         | **Explanation**     |
|-------------------|---------------------|
| LCD panel failure | broken display      |
| Backlight failure | screen very dim     |
| LCD cable damage  | hinge wear          |
| GPU issue         | motherboard problem |

**Step 4 — Boot Check 💾**

If display works but OS doesn't load:

Check:

- SSD/HDD detected in BIOS

- boot order

- corrupted OS

Disk health can be checked with **CrystalDiskInfo**.

**Step 5 — OS & Software Check ⚙️**

Typical issues:

- Windows corruption

- malware

- driver conflicts

Technicians often use:

- **Hiren's BootCD**

- **Malwarebytes**

**2️⃣ Motherboard Components Cheat Sheet**

Understanding motherboard parts helps diagnose failures.

**CPU (Processor)**

The main processing chip.

Failure symptoms:

- system won't POST

- immediate shutdown

Example processor brand:

- **Intel**

- **AMD**

**RAM (Memory)**

Temporary working memory.

Failure symptoms:

- no POST

- random crashes

- blue screen

Test with **MemTest86**.

**VRM (Voltage Regulator Module)**

Controls power going to the CPU.

Failure symptoms:

- system powers on then shuts off

- overheating MOSFETs

**Chipset**

Controls communication between components.

Symptoms:

- USB failure

- PCI devices not detected

- random freezes

**BIOS / UEFI Chip**

Stores motherboard firmware.

Common firmware brands:

- **American Megatrends BIOS**

- **Phoenix BIOS**

Failure symptoms:

- system stuck at POST

- BIOS corruption

**3️⃣ Diagnosing “Laptop Powers On But No Display”**

This is **one of the most common break/fix problems**.

Technicians test in this order.

**Step 1 — Check Keyboard LEDs**

Press:

Caps Lock  
Num Lock

If LEDs toggle → system is running.

Problem likely:

- screen

- LCD cable

- GPU

**Step 2 — External Monitor Test**

Connect HDMI monitor.

If external display works:

Problem =

- laptop screen

- LCD cable

- backlight

**Step 3 — Flashlight Test**

Shine light on screen.

If you see faint image:

Problem =

- backlight circuit

**Step 4 — RAM Reseat**

Remove and reinstall RAM.

RAM errors can prevent video initialization.

**Step 5 — GPU Failure**

Common on gaming laptops or older systems.

Symptoms:

- fan spins

- keyboard lights

- no video

Repair may require motherboard replacement.

**4️⃣ Technician USB Toolkit**

Most repair technicians carry a **bootable USB toolkit**.

Common tools include:

| **Tool**        | **Purpose**     |
|-----------------|-----------------|
| Rufus           | create boot USB |
| Hiren's BootCD  | diagnostics     |
| MemTest86       | RAM testing     |
| CrystalDiskInfo | disk health     |
| Malwarebytes    | malware removal |

**5️⃣ Fast Repair Technician Decision Rule**

Experienced technicians ask **one key question early**:

Is this repair cheaper than replacing the computer?

Example:

| **Repair**              | **Usually Worth It** |
|-------------------------|----------------------|
| SSD upgrade             | ✔                    |
| RAM upgrade             | ✔                    |
| Battery replacement     | ✔                    |
| Screen replacement      | ✔                    |
| Motherboard replacement | sometimes            |
| Liquid damage           | often not worth it   |

**6️⃣ Break/Fix Technician Mindset**

Experienced technicians think like this:

1️⃣ **Is it hardware or software?**  
2️⃣ **Which component is most likely?**  
3️⃣ **What is the fastest test to confirm it?**

This approach saves **hours of troubleshooting**.
**1️⃣ 3-Minute Computer Diagnostic (Expert Triage)**

Experienced technicians can **estimate the problem in about 3
minutes** by checking only a few things.

**Step 1 — Power (30 seconds) 🔌**

Press the power button and observe:

| **Observation**            | **Likely Issue**       |
|----------------------------|------------------------|
| No lights or fan           | power supply / charger |
| Lights but no fan          | motherboard            |
| Fan spins briefly then off | CPU / motherboard      |
| Fan spins normally         | continue diagnostics   |

Desktop power failures often involve the PSU.

**Step 2 — POST (60 seconds) 🧠**

Look for POST signs:

- BIOS logo

- keyboard LED flash

- beep codes

Common firmware involved:

- **American Megatrends BIOS**

- **Phoenix BIOS**

If **no POST**:

Test minimal hardware:

CPU  
1 RAM stick  
PSU  
Motherboard

**Step 3 — Storage Detection (30 seconds) 💾**

Enter BIOS.

Check:

- SSD/HDD detected?

- Boot device selected?

Disk health can be checked with **CrystalDiskInfo**.

Dead drives are one of the **most common failures**.

**Step 4 — OS Load (30 seconds)**

If OS loads but system is slow:

Check:

- disk usage

- RAM usage

- malware

Malware removal often uses **Malwarebytes**.

**2️⃣ Common Laptop Failures by Brand**

Different manufacturers tend to have **different weak points**.

**HP**

Common problems:

- BIOS corruption

- overheating

- charging port failure

Symptoms:

- laptop turns on but no display

- battery not charging

**Dell**

Typical issues:

- motherboard VRM failure

- battery degradation

- BIOS update errors

Often displays **diagnostic LED codes**.

**Lenovo**

Common failures:

- keyboard issues

- BIOS reset loops

- power IC failure

Business models like ThinkPads are generally reliable.

**ASUS**

Typical problems:

- GPU failure in gaming laptops

- fan wear

- thermal throttling

**Apple laptops**

Frequent issues:

- keyboard failures (older models)

- logic board damage from liquid

- battery swelling

Repair often requires **specialized tools**.

**3️⃣ 20 Most Common Windows Problems (Break/Fix)**

Most technicians repeatedly see the same Windows issues.

**Boot Problems**

**1. Windows Won’t Boot**

Possible causes:

- corrupted bootloader

- disk failure

Fix:

- startup repair

- boot rebuild

**2. Blue Screen (BSOD)**

Common causes:

- RAM failure

- driver conflict

RAM can be tested with **MemTest86**.

**3. Automatic Repair Loop**

Caused by:

- corrupted system files

- bad updates

Fix:

- safe mode

- system restore

**Performance Problems**

**4. Computer Very Slow**

Common causes:

- HDD instead of SSD

- startup programs

Big improvement from SSD upgrade.

**5. High CPU Usage**

Check:

- background processes

- malware

**6. Disk 100% Usage**

Often caused by:

- failing HDD

- indexing service

- malware

Disk status can be checked with **CrystalDiskInfo**.

**Network Problems**

**7. No Internet**

Check:

- IP configuration

- router

- DNS

Commands:

ipconfig  
ping 8.8.8.8  
ipconfig /renew

**8. Wi-Fi Not Detected**

Possible causes:

- driver issue

- hardware failure

**Hardware Problems**

**9. Laptop Not Charging**

Possible causes:

- battery failure

- DC jack damage

- charger issue

**10. Overheating**

Fix:

- clean fans

- replace thermal paste

**Malware / Security**

**11–15 Common Malware Issues**

Symptoms:

- browser redirects

- slow system

- pop-ups

Technicians usually use:

- **Malwarebytes**

**System Errors**

**16–20 Typical Problems**

Examples:

- missing DLL errors

- driver conflicts

- Windows update failures

- corrupted registry

- activation issues

**4️⃣ Technician Golden Troubleshooting Order**

Professional technicians check components in this order:

Power  
RAM  
Storage  
Cooling  
Operating System

These **five areas cause most failures**.

💡 **Pro Tip Used by Repair Shops**

If a computer has:

- HDD instead of SSD

- less than 8GB RAM

Technicians often recommend **upgrade instead of repair** because
performance improves dramatically.

**1️⃣ 15 Common Laptop Motherboard Failures**

Laptop motherboards fail mainly due to **heat, power issues, and liquid
damage**.

| **Failure** | **Symptoms** | **Typical Fix** |
|----|----|----|
| DC power circuit failure | no power | repair DC jack or power IC |
| MOSFET short | charger shuts off | replace MOSFET |
| Charging IC failure | battery not charging | replace charging controller |
| GPU failure | powers on but no display | motherboard repair/replacement |
| BIOS corruption | no POST | reflash BIOS |
| VRM failure | power on then off | repair VRM stage |
| CPU solder failure | random shutdown | motherboard replacement |
| PCH/chipset failure | USB/network not working | board replacement |
| Clock generator failure | no POST | board repair |
| RAM slot damage | memory not detected | slot replacement |
| EC (embedded controller) failure | keyboard/power issues | reprogram EC |
| USB controller failure | ports dead | controller replacement |
| Backlight circuit failure | dim screen | repair backlight power |
| Audio chip failure | no sound | replace codec |
| Liquid corrosion | random failures | board cleaning / repair |

Many of these require **board-level repair tools**.

**2️⃣ Laptop Charging Circuit Basics**

The **charging circuit** controls power flow from the adapter to the
battery and motherboard.

Main components include:

- DC jack

- charging IC

- MOSFETs

- battery controller

**Charging Circuit Flow**

Power Adapter

│

▼

DC Jack

│

▼

Input MOSFETs

│

▼

Charging Controller IC

│

▼

Battery + System Power

**Typical Charging Problems**

| **Symptom**                   | **Likely Cause**            |
|-------------------------------|-----------------------------|
| Laptop works but won't charge | battery failure             |
| No charging LED               | charger or MOSFET           |
| Charging intermittently       | damaged DC jack             |
| Battery stuck at 0%           | firmware/battery controller |

**3️⃣ How Technicians Diagnose Charging Problems**

**Step 1 — Test Adapter Voltage**

Use a multimeter.

Example:

- most laptops use **19V adapters**

**Step 2 — Check DC Jack**

Common symptoms:

- loose connector

- sparks

- intermittent charging

Fix: replace jack.

**Step 3 — Battery Health Check**

In operating systems like **Windows 11** you can run:

powercfg /batteryreport

This shows battery wear.

**Step 4 — Charging IC Failure**

If adapter and battery are good but charging fails:

- charging controller may be damaged.

Repair requires **board-level soldering**.

**4️⃣ Complete POST Troubleshooting Tree**

POST (Power-On Self-Test) checks hardware before the operating system
loads.

Many systems use firmware such as:

- **American Megatrends BIOS**

- **Phoenix BIOS**

**POST Diagnostic Tree**

Power button pressed

│

▼

Any lights or fan?

│

NO │ YES

│

Check PSU/charger

│

▼

Fan spinning?

│

NO │ YES

│

Motherboard issue

│

▼

Any display?

│

NO │ YES

│

Check RAM/GPU

│

▼

Boot device detected?

│

NO │ YES

│

Storage failure

│

▼

Operating system loads

**5️⃣ Technician USB Diagnostic Toolkit**

Most technicians carry a **bootable USB toolkit** containing utilities
such as:

| **Tool**        | **Purpose**            |
|-----------------|------------------------|
| Hiren's BootCD  | hardware diagnostics   |
| MemTest86       | RAM testing            |
| CrystalDiskInfo | disk health            |
| Rufus           | create bootable drives |
| Malwarebytes    | malware removal        |

These tools cover **most break/fix scenarios**.

**6️⃣ Technician Decision Matrix (Repair vs Replace)**

Repair technicians often evaluate **cost vs value**.

| **Problem**          | **Usually Repair?** |
|----------------------|---------------------|
| SSD failure          | Yes                 |
| RAM failure          | Yes                 |
| Screen damage        | Yes                 |
| Battery failure      | Yes                 |
| Keyboard failure     | Yes                 |
| Motherboard failure  | Sometimes           |
| Liquid damage        | Often no            |
| GPU failure (laptop) | Rarely              |

**7️⃣ Technician “Failure Probability Rule”**

From repair shop statistics:

| **Component** | **Failure Frequency** |
|---------------|-----------------------|
| Storage drive | very high             |
| Battery       | high                  |
| Cooling fan   | high                  |
| RAM           | medium                |
| Motherboard   | medium                |
| CPU           | very rare             |

💡 **Important Insight**

In many cases, **slow computers are not broken** — they simply need:

- SSD upgrade

- RAM upgrade

- OS cleanup

**1️⃣ Laptop Motherboard Component Map**

Understanding motherboard sections helps technicians isolate faults
faster.

**Power Input Section**

Components:

- DC jack

- input MOSFETs

- charging controller

Purpose:  
Controls incoming power from the charger.

Typical failure symptoms:

- laptop completely dead

- charger light turns off when plugged in

- battery not charging

------------------------------------------------------------------------

**VRM (Voltage Regulator Module)**

Converts power into the voltages needed by CPU and chipset.

Typical symptoms:

| **Symptom**                     | **Cause**            |
|---------------------------------|----------------------|
| system powers on then shuts off | unstable CPU voltage |
| very hot MOSFETs                | VRM short            |

------------------------------------------------------------------------

**CPU Section**

The processor is the main computing unit.

Manufacturers include:

- **Intel**

- **AMD**

Failure symptoms:

- no POST

- immediate shutdown

- system freezes

CPU failure is **rare compared to other components**.

------------------------------------------------------------------------

**Chipset / PCH**

Controls communication between:

- USB

- storage

- networking

- PCI devices

Symptoms of failure:

- USB ports dead

- storage not detected

- system instability

------------------------------------------------------------------------

**RAM Section**

Handles system memory.

Common issues:

- no POST

- random crashes

- blue screen errors

Testing tool often used:

- **MemTest86**

**BIOS / UEFI Firmware Chip**

Stores system firmware.

Common firmware types:

- **American Megatrends BIOS**

- **Phoenix BIOS**

Symptoms of corruption:

- system stuck at logo

- no POST

- boot failure

------------------------------------------------------------------------

**2️⃣ Laptop Powers On for 3 Seconds Then Shuts Off**

This is a **very common repair case**.

Technicians usually check the following causes.

------------------------------------------------------------------------

**Cause 1 — RAM Failure**

Symptoms:

- laptop powers on briefly

- shuts down quickly

- no display

Test:

- remove RAM

- try one module

- test different slots

------------------------------------------------------------------------

**Cause 2 — CPU Overheat Protection**

If the cooling system fails, the system shuts down quickly.

Check:

- fan spinning

- heatsink contact

- thermal paste

------------------------------------------------------------------------

**Cause 3 — VRM or Power Circuit Fault**

Symptoms:

- system starts then stops

- repeated power cycling

Requires motherboard diagnosis.

------------------------------------------------------------------------

**Cause 4 — Short Circuit on Motherboard**

Signs:

- charger LED turns off when plugged in

- motherboard gets hot instantly

Requires board-level repair.

------------------------------------------------------------------------

**Cause 5 — BIOS Corruption**

Sometimes the firmware is damaged.

Possible fix:

- BIOS reset

- BIOS reflash

------------------------------------------------------------------------

**3️⃣ Professional Repair Shop Ticket Workflow**

Most repair shops follow a structured process.

**Step 1 — Customer Intake**

Technician records:

- device model

- serial number

- reported problem

- physical condition

Example:  
Laptop from \*\*Lenovo with “no power”.

------------------------------------------------------------------------

**Step 2 — Initial Inspection**

Check:

- liquid damage

- broken ports

- damaged screen

- swollen battery

------------------------------------------------------------------------

**Step 3 — Diagnostic Testing**

Technician performs tests:

- hardware test

- POST check

- storage health

- memory test

Disk diagnostics often use **CrystalDiskInfo**.

------------------------------------------------------------------------

**Step 4 — Repair Estimate**

Customer receives estimate including:

- labor cost

- replacement parts

- expected completion time

------------------------------------------------------------------------

**Step 5 — Repair**

Possible tasks:

- SSD replacement

- screen replacement

- malware removal

- OS reinstall

Technicians often use tools like **Hiren's BootCD** for diagnostics.

------------------------------------------------------------------------

**Step 6 — Quality Testing**

Technician verifies:

- system boots correctly

- temperatures normal

- hardware stable

------------------------------------------------------------------------

**Step 7 — Customer Pickup**

Final steps:

- explain repair performed

- provide warranty information

- document the service

------------------------------------------------------------------------

**4️⃣ How Experienced Technicians Identify 80% of Failures**

Veteran technicians often start with the **highest-failure components**.

Typical order:

1.  Storage drive

2.  RAM

3.  Power supply / charger

4.  Battery

5.  Cooling system

These components cause **most real-world failures**.

------------------------------------------------------------------------
