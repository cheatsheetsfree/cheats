

**🔧 Basic CLI Navigation**

| **Task**                   | **Command**          |
|----------------------------|----------------------|
| Enter operational mode     | cli                  |
| Enter configuration mode   | configure or edit    |
| Commit changes             | commit               |
| Exit configuration mode    | exit                 |
| View current config        | show configuration   |
| View config with hierarchy | \`show configuration |
| Save config to file        | save \<filename\>    |
| Load config from file      | load \<filename\>    |

**🔍 Basic Monitoring / Show Commands**

| **Task**               | **Command**                   |
|------------------------|-------------------------------|
| Show interface status  | show interfaces terse         |
| Show MAC address table | show ethernet-switching table |
| Show VLANs             | show vlans                    |
| Show system info       | show system information       |
| Show current users     | show system users             |
| Show logs              | show log messages             |
| Show version           | show version                  |

**🌐 Interface Configuration**

edit interfaces ge-0/0/1

set unit 0 family ethernet-switching port-mode access

set unit 0 family ethernet-switching vlan members VLAN_NAME

ge-0/0/x is physical port; replace x with the port number.

**Make an interface a trunk port:**

edit interfaces ge-0/0/1

set unit 0 family ethernet-switching port-mode trunk

set unit 0 family ethernet-switching vlan members \[ vlan10 vlan20 \]

**📦 VLAN Configuration**

set vlans VLAN_NAME vlan-id 10

Example:

set vlans Sales vlan-id 10

**🔄 Assign VLAN to Port**

- **Access port**:

set interfaces ge-0/0/1 unit 0 family ethernet-switching port-mode
access

set interfaces ge-0/0/1 unit 0 family ethernet-switching vlan members
Sales

- **Trunk port**:

set interfaces ge-0/0/1 unit 0 family ethernet-switching port-mode trunk

set interfaces ge-0/0/1 unit 0 family ethernet-switching vlan members \[
Sales IT \]

**🌐 Layer 3 Interface (SVI / IRB)**

Enable L3 routing for a VLAN:

set vlans Sales l3-interface irb.10

set interfaces irb unit 10 family inet address 192.168.10.1/24

**🔒 Port Security / Disable Interface**

- Disable an interface:

set interfaces ge-0/0/1 disable

- Enable again:

delete interfaces ge-0/0/1 disable

**🔄 Restart Interface**

run restart interface ge-0/0/1

**🔧 Configure Management IP**

set interfaces vlan unit 0 family inet address 192.168.1.2/24

set routing-options static route 0.0.0.0/0 next-hop 192.168.1.1

Management VLAN should be associated with vlan.0 or appropriate IRB.

**🔐 User Configuration**

set system login user admin class super-user authentication
plain-text-password

**🌍 Remote Access (SSH/Console)**

- Enable SSH:

set system services ssh

- Configure console timeout:

set system services ssh connection-limit 5

**🧹 Reset to Factory Defaults**

request system zeroize

⚠️ Erases all configuration and reboots switch.

**🧠 Commit Confirmed (Safe Config Change)**

commit confirmed 5

Auto-reverts in 5 minutes if not committed again. Use when unsure.


**🔄 Juniper vs Cisco CLI Modes Comparison**

| **Cisco IOS Mode** | **Junos OS Equivalent** | **Description** |
|----|----|----|
| **User EXEC Mode**Switch\> | **Operational Mode**\> prompt | Basic commands like show, ping, etc. You land here by default when you log in. |
| **Privileged EXEC Mode**Switch# | **Operational Mode (still \> prompt)** | No separate mode; you run all operational commands at this level (if you have the rights). |
| **Global Configuration Mode**Switch(config)# | **Configuration Mode**\[edit\] prompt | For making configuration changes. Enter with configure or edit. |
| **Interface/VLAN/Sub-modes**Switch(config-if)# | **Hierarchy under \[edit\]** | You "navigate" hierarchically to a config context, like edit interfaces ge-0/0/1. |
| **ROMmon Mode** | **Loader Prompt / Recovery Mode** | Low-level recovery shell used during boot problems or zeroize. |

**📌 Junos CLI Mode Details**

**1. Operational Mode (\>)**

- Default after login.

- Used for:

  - show commands

  - ping, traceroute

  - request operations (e.g., reboot, zeroize)

- Enter with: **default login** or exit from config mode.

user@switch\> show interfaces terse

user@switch\> ping 8.8.8.8

**2. Configuration Mode (# with \[edit\] context)**

- Enter with: configure or edit

- Used for:

  - All configuration tasks (interfaces, VLANs, routing, etc.)

  - Hierarchical structure, e.g.:

user@switch\> configure

\[edit\]

user@switch# edit interfaces ge-0/0/1

\[edit interfaces ge-0/0/1\]

user@switch# set unit 0 family ethernet-switching port-mode access

**3. Commit Model**

- Unlike Cisco, Junos requires **commit** to apply changes.

- You can also do:

  - commit confirmed 5 (auto-rollback if not confirmed)

  - rollback (to revert to previous config)

**🚀 Quick Junos Navigation Cheat Sheet**

| **Task**                   | **Command** |
|----------------------------|-------------|
| Enter config mode          | configure   |
| Go back one level          | up          |
| Go to top level            | top         |
| Show where you are         | show        |
| Exit to operational mode   | exit        |
| Commit changes             | commit      |
| Cancel uncommitted changes | rollback 0  |



**✅ To Make a Port a Routed Port (L3) on Juniper EX2200:**

You need to **delete the Layer 2 (ethernet-switching) configuration**
and then assign an IP address under the inet family.

**🧾 Step-by-Step Example**

Let’s say you want to make port ge-0/0/1 a **Layer 3 routed port** with
IP 192.168.1.1/24.

**1. Delete switching configuration:**

delete interfaces ge-0/0/1 unit 0 family ethernet-switching

**2. Configure it as a Layer 3 interface:**

set interfaces ge-0/0/1 unit 0 family inet address 192.168.1.1/24

**3. Commit the changes:**

commit

Now, ge-0/0/1 behaves like a routed port (similar to no switchport on
Cisco).

**❗ Notes:**

- Once a port is configured with family inet, it's no longer a switching
  port — it becomes a **Layer 3 routed interface**.

- Not all EX series support this on every port due to hardware
  limitations — the EX2200 **does support routed ports**, but it has
  **limited Layer 3 throughput**.

**🔁 To Revert to a Switchport (L2):**

If you want to make the port a Layer 2 switchport again:

delete interfaces ge-0/0/1 unit 0 family inet

set interfaces ge-0/0/1 unit 0 family ethernet-switching port-mode
access

set interfaces ge-0/0/1 unit 0 family ethernet-switching vlan members
DEFAULT

commit

**📟 1. Show Spanning Tree on Juniper EX2200**

To view **Spanning Tree Protocol (STP)** status on a Juniper EX switch:

**🔍 Show STP Interface Info:**

show spanning-tree interface

**🔍 Show Overall STP Status:**

show spanning-tree bridge

**🔍 Show STP VLAN Info (for RSTP or MSTP):**

show spanning-tree vlan \<vlan-id\>

**🧠 Notes:**

- By default, EX switches run **RSTP (Rapid Spanning Tree)**.

- To change or configure STP mode:

set protocols spanning-tree mode rstp

**🌐 2. Equivalent of ip helper-address (DHCP Relay)**

In Cisco, ip helper-address on an interface forwards broadcast traffic
(e.g., DHCP) to a specific server.

**✅ Juniper Equivalent:**

You configure **DHCP relay** using the forwarding-options and associate
it with a VLAN or interface.

**🧾 Example: Configure DHCP Relay (Like ip helper-address)**

Suppose:

- VLAN: Sales

- VLAN ID: 10

- DHCP Server IP: 192.168.100.10

**Step-by-step:**

set forwarding-options helpers bootp interface vlan.10 server
192.168.100.10

If vlan.10 is not yet configured, do this as well:

set vlans Sales vlan-id 10

set vlans Sales l3-interface vlan.10

set interfaces vlan unit 10 family inet address 192.168.10.1/24

Then commit:

commit

**🔍 Verify DHCP Relay:**

show configuration forwarding-options

**Summary Table**

| **Cisco Command** | **Juniper Equivalent** |
|----|----|
| show spanning-tree | show spanning-tree bridge, show spanning-tree interface |
| ip helper-address \<IP\> | set forwarding-options helpers bootp interface \<if\> server \<IP\> |

**🔧 1. How to Remove a set Command in Juniper CLI**

The **primary way** to remove a configuration line is to use the delete
command with **the same syntax** as the set command.

**✅ Example: Removing a VLAN from an interface**

If you had:

set interfaces ge-0/0/1 unit 0 family ethernet-switching vlan members
Sales

To remove it:

delete interfaces ge-0/0/1 unit 0 family ethernet-switching vlan members
Sales

**🧰 2. Are There Different Ways to Remove a Command?**

Yes, there are **multiple ways** to remove or undo configuration in
JunOS:

**🅰️ delete — Remove a specific configuration line**

- Most commonly used

- Mirrors set structure

- Can be used at various hierarchy levels

delete interfaces ge-0/0/1 unit 0

**🅱️ replace — Change configuration inline**

- Useful for replacing one value with another

- Replaces part of config without having to delete then set

replace pattern Sales with Marketing

🔹 This is more advanced and useful for scripts or bulk edits.

**🆎 deactivate — Temporarily disable a config item**

- Doesn’t remove it — just marks it inactive

- Can be reactivated later with activate

deactivate interfaces ge-0/0/1

Then to bring it back:

activate interfaces ge-0/0/1

Great for testing or soft rollbacks.

**🆑 rollback — Revert to a previous committed configuration**

- JunOS keeps **50 rollback configs** by default

- Roll back all changes to a previous state

rollback 1

commit

🔹 rollback 0 discards *uncommitted* changes.

**🧹 clear — Used to reset operational state, not config**

For example:

clear ethernet-switching table

⚠️ This doesn't modify configuration — just clears state.

**🧠 Summary: Ways to "Remove" Config in JunOS**

| **Method** | **Description** | **Use Case** |
|----|----|----|
| delete | Remove specific config line | Default method |
| deactivate | Keep config but disable it | Temporary testing or troubleshooting |
| replace | Inline substitution | Bulk config changes |
| rollback | Revert to previous config | Full config undo |
| clear | Clear dynamic/operational info | E.g., MAC tables, counters |

**🧹 JunOS Command Cheat Sheet: Remove / Undo / Disable Configs**

| **Command Type** | **Command Example** | **Description / Use Case** |
|----|----|----|
| 🧨 **Delete** | delete interfaces ge-0/0/1 unit 0 | Permanently removes a specific configuration line or hierarchy. |
|  | delete system services ssh | Remove entire config stanza (e.g., disable SSH). |
| ✳️ **Deactivate** | deactivate interfaces ge-0/0/1 | Disables the config without deleting it. Great for temporary changes. |
| ✅ **Activate** | activate interfaces ge-0/0/1 | Re-enables a previously deactivated config. |
| 🔄 **Rollback** | rollback 1 | Loads previous config (e.g., last commit). Must commit to apply. |
|  | rollback 0 | Discards **uncommitted** changes (reverts working config). |
| 🧬 **Replace** | replace pattern Sales with Marketing | Replaces a string across the loaded config. Useful for bulk renaming. |
| 💥 **Clear (Ops)** | clear ethernet-switching table | Clears dynamic state — **not** config. E.g., flush MAC table. |
|  | clear arp | Clears ARP cache. |
| 💾 **Load + Replace** | load override \<filename.conf\> | Completely replaces current config with file. Caution: full overwrite. |

**⚠️ Common Tips**

- Always **use commit confirmed** when making changes remotely:

- commit confirmed 5

> Will auto-rollback in 5 minutes if you lose connection.

- To preview what you’re changing:

- show \| compare

> Shows config diff between current and uncommitted changes.

- If unsure, use deactivate first instead of delete — safer to test.

**📄 Example: Undo a VLAN Assignment on a Port**

If you previously did:

set interfaces ge-0/0/1 unit 0 family ethernet-switching vlan members
Sales

You can:

- **Delete it**:

- delete interfaces ge-0/0/1 unit 0 family ethernet-switching vlan
  members Sales

- Or **Deactivate it**:

- deactivate interfaces ge-0/0/1 unit 0 family ethernet-switching vlan
  members Sales

1.  **Physical interfaces** (e.g., ge-0/0/1)

2.  **SVIs (IRB or VLAN interfaces)**

This is very helpful for documentation and clarity — like Cisco's
description command.

**🖊️ Add Description to a Physical Interface**

set interfaces ge-0/0/1 description "Uplink to Core Switch"

✅ This adds a human-readable description you can see in interface info
outputs.

**🌐 Add Description to an SVI (L3 VLAN interface)**

If you're using an **IRB** or **vlan** interface for L3 (like an SVI):

**Option A: IRB Interface (Recommended for EX series L3 VLANs)**

set interfaces irb unit 10 description "SVI for Sales VLAN"

**Option B: vlan Interface (only if you're using vlan.10 as the L3
interface)**

set interfaces vlan unit 10 description "SVI for Sales VLAN"

Use the one that matches your VLAN L3 setup. For most EX switches using
modern JunOS, **IRB interfaces** are preferred for SVI.

**✅ Verify Description**

To verify that the description is applied:

show interfaces ge-0/0/1 \| display set

or

show interfaces irb.10 \| display set

You’ll see output like:

set interfaces ge-0/0/1 description "Uplink to Core Switch"

**🔍 1. What is irb? (Integrated Routing and Bridging)**

**🔹 irb = Integrated Routing and Bridging**

- Used to provide **Layer 3 (routed) interfaces** for **VLANs**.

- It’s the **Juniper equivalent of an SVI (Switched Virtual Interface)**
  in Cisco.

- Think of it as the **"virtual router interface"** for a VLAN.

**✅ Common Use Case:**

set vlans Sales l3-interface irb.10

set interfaces irb unit 10 family inet address 192.168.10.1/24

**🔍 2. What is vme? (Virtual Management Ethernet)**

**🔹 vme = Virtual Management Ethernet**

- Used as a **management interface** on some Juniper platforms.

- It allows **out-of-band management** (like mgmt0 on Cisco Nexus).

- Only available on certain platforms — not always seen on EX2200.

- Usually used for **routing the management traffic (SSH, SNMP, etc.)**
  if physical mgmt port is in use.

**🔍 3. What is bme? (Background Monitoring Ethernet)**

**🔹 bme = Background Monitoring Ethernet**

- Internal interface used for **health monitoring**, diagnostics, and
  communication between control and forwarding planes.

- Not user-configurable.

- **Leave it alone** — it’s system-reserved.

**🔁 4. What is the Loopback Interface in JunOS?**

Juniper does **not use the keyword loopback like Cisco**, but it
provides the **same functionality** using a special logical interface:

**🔹 Loopback interface name is:**

lo0

It's the **Loopback logical interface**, and behaves like loopback0 on
Cisco.

**✅ How to Create a Loopback Interface**

Here's how to configure a loopback with an IP:

set interfaces lo0 unit 0 family inet address 10.1.1.1/32

Use /32 because loopback interfaces are typically host-only.

**🔍 Verify Loopback**

show interfaces lo0 terse

You should see:

Interface Admin Link Proto Local

lo0.0 up up inet 10.1.1.1/32

**🧠 Summary Table**

| **Interface** | **Purpose** | **Cisco Equivalent** | **User Configurable?** |
|----|----|----|----|
| irb | Routed VLAN interface | SVI (interface vlan) | ✅ Yes |
| vme | Virtual Mgmt Interface | mgmt0 (out-of-band) | ⚠️ Some platforms |
| bme | System monitoring interface | N/A (internal) | ❌ No |
| lo0 | Loopback interface | interface loopback0 | ✅ Yes |

**🤔 Is There a do Command in Juniper?**

**❌ No — JunOS does not use do**

Instead, Juniper cleanly separates:

- **Operational mode** (prompt ends in \>) — for show, ping, clear, etc.

- **Configuration mode** (prompt ends in \#) — for set, delete, commit,
  etc.

**✅ So how do you run a show command inside config mode?**

You **just type the run command** before the operational command.

**🔧 Example: You're in edit mode and want to view VLANs**

\[edit\]

user@switch# run show vlans

That works exactly like Cisco’s do show vlan.

**🧠 Quick Comparison**

| **Cisco**       | **Juniper**            |
|-----------------|------------------------|
| do show vlan    | run show vlans         |
| do ping 8.8.8.8 | run ping 8.8.8.8       |
| do show config  | run show configuration |

**🔄 Bonus: Return to Operational Mode**

If you're doing a lot of operational commands, it's easier to just:

exit

That takes you back to operational mode (\>) where you can run:

show vlans

show interfaces terse

Then go back to config with:

configure

**Common Pipe Commands in JunOS**

| **Pipe Command** | **Description** | **Example** |
|----|----|----|
| \` | match \<pattern\>\` | Show only lines matching the pattern |
| \` | except \<pattern\>\` | Show all lines **except** those matching |
| \` | count\` | Count the number of lines |
| \` | no-more\` | Show all output at once without pausing |
| \` | display set\` | Show config in set syntax |
| \` | display json\` | Show output in JSON format |
| \` | display xml\` | Show output in XML format |
| \` | save \<filename\>\` | Save output to a file |

**Example: Show VLANs that include "Sales"**

show vlans \| match Sales

**Example: Show interfaces excluding those that are down**

show interfaces terse \| except down

**Notes**

- Pipes work in **operational mode** (\>) and also with run inside
  configuration mode:

\[edit\]

user@switch# run show interfaces terse \| match up

- You can combine pipes for powerful filtering:

show interfaces terse \| match ge-0/0 \| except down \| count

**So, the correct command to view the configuration in set format on a
Juniper EX2200 is:**

show configuration \| display set

This command will output the configuration in Junos **set** commands,
which are more script-friendly and easier to parse.

**Summary:**

| **Cisco-style**     | **Juniper EX2200 equivalent**         |
|---------------------|---------------------------------------|
| show running-config | show configuration                    |
| \`show run          | include x\`                           |
| \`show run          | display set\` (non-existent in Cisco) |

**If you want to run a command to show the *active* configuration, just
use:**

show configuration

**If you want the configuration in the set format (one-line commands):**

show configuration \| display set

Great observation — the difference between these two lines:

set forwarding-options helpers bootp interface vlan.8

vs.

set forwarding-options helpers bootp interface vlan.50 server
192.168.50.5

…has to do with **how DHCP relay (BOOTP helper)** is configured on
Junos.

**🔍 Let’s break it down:**

**✅ 1. set forwarding-options helpers bootp interface vlan.8**

This command **enables DHCP relay (BOOTP helper)** on the vlan.8
interface.

- It means: "If a DHCP request comes in on vlan.8, relay it to the
  servers configured globally (if any)."

- But it doesn’t specify any server here — you'd need to have global
  servers configured using:

set forwarding-options helpers bootp server \<ip-address\>

Or add specific servers for this interface using the next format below.

**✅ 2. set forwarding-options helpers bootp interface vlan.50 server
192.168.50.5**

This one **enables DHCP relay** **and** **assigns a specific DHCP server
just for VLAN 50**.

- It means: "On interface vlan.50, forward DHCP requests to
  192.168.50.5."

- This is a **per-interface server config**. You can have different
  servers for each VLAN interface if needed.

**🧠 Why the difference?**

Just different config styles for different needs:

| **Config Style** | **Description** |
|----|----|
| set forwarding-options helpers bootp server \<ip\> | Global server used by all interfaces (unless overridden). |
| set forwarding-options helpers bootp interface vlan.X | Enables DHCP relay on that interface (must have server defined elsewhere). |
| set forwarding-options helpers bootp interface vlan.X server \<ip\> | Enables DHCP relay on interface and sets specific server for that VLAN. |

**✅ Recommended Practice:**

If you're using **different DHCP servers per VLAN**, use:

set forwarding-options helpers bootp interface vlan.X server \<ip\>

If you're using **the same DHCP server for all VLANs**, you can:

set forwarding-options helpers bootp server 192.168.50.5

set forwarding-options helpers bootp interface vlan.50

set forwarding-options helpers bootp interface vlan.8

This keeps the config cleaner if all VLANs go to the same server.

**TL;DR**

- set ... interface vlan.X = enables DHCP relay

- set ... interface vlan.X server IP = enables DHCP relay **and** sets
  specific server for that interface

- set ... server IP = global DHCP server
