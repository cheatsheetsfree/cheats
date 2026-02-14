**cheat-sheet pack** for admins covering three key areas:

1.  Managing Microsoft 365 tenant & users,

2.  Imaging/PC provisioning using Microsoft Intune / Autopilot,

3.  Mobile phone/device management with Intune.\
    You can use this as quick reference when helping users or managing
    the environment.

**1. Microsoft 365 Tenant & User Management Cheat Sheet**

**Common Admin Tasks**

- Create user: Microsoft 365 Admin Center → Users → Active users → Add a
  user.

- Assign license(s): In user details → Licenses & apps → select
  appropriate plan.

- Reset password: Users → Active users → select user → Reset password.

- Manage roles: Users → Active users → Roles tab → e.g., Global admin,
  Helpdesk admin.

- Manage groups: Groups → Active groups → Create or modify Microsoft 365
  groups, security groups.

- Manage licenses globally: Billing → Licenses → assign, remove, monitor
  consumption.

- Service health & alerts: Admin Center → Health → Service health → view
  issues or advisories.

- Audit logs & sign-in activity: Admin Center → Compliance or Security →
  Audit log / Sign-in logs.

- Security & compliance settings: Admin Center → Security → Identity &
  access (e.g., MFA), Attack surface reduction.

- Data permissions/sharing: Admin Center → SharePoint / OneDrive
  settings → external sharing, guest access.

**Tenant Settings & Best-Practices**

- Enforce MFA for admins and users: Admin Center → Azure AD → Security →
  Conditional Access → Require MFA.

- Set naming convention for users and groups (for easily identifying
  departments).

- Monitor license usage and plan renewal well in advance.

- Use Role-Based Access Control (RBAC) --- assign least privilege to
  help-desk/admin roles.

- Configure data retention, backup, archiving: Admin Center → Compliance
  → Information governance.

- Use single sign-on & conditional access to protect resources: Admin
  Center → Azure AD → Conditional Access.

**Day-to-Day Troubleshooting Tips**

- User can't access a service → Check assigned license + service
  status + sign-in logs.

- User says application isn't available → Ensure they have license +
  correct group membership + service enabled.

- Service slow or unavailable → Check Service health dashboard.

- External sharing blocked → Confirm group/sharepoint sharing settings
  and user permissions.

- Deleted user and need to recover files → Recover user within 30 days
  from Admin Center, or restore from backup/archive.

**2. PC Imaging / Provisioning with Intune / Autopilot Cheat Sheet**

**Key Steps (Windows 10/11 & corporate PCs)**

- Register device with Autopilot: Devices → Windows → Windows Autopilot
  devices → import hardware hash or use OEM/partner submission.

- Create Autopilot profile: Devices → Windows → Windows Autopilot
  deployment profiles → configure OOBE behaviour (user vs.
  self-deploying, Azure AD join, Intune management).

- Assign profile to device group: Use Azure/Intune groups to target
  devices for Autopilot.

- Configure device enrollment: Devices → Enroll devices → Windows
  enrollment → Automatic enrollment (Azure AD + Intune) setup.

- Create Configuration profiles: Devices → Configuration profiles → New
  profile (select platform Windows 10/11) → choose profile type
  (Settings catalog, Templates, etc.).

- Create Update rings: Devices → Windows → Update rings for Windows 10
  and later → configure feature/quality update deferral, restart
  behaviour.

- Create Applications deployment: Apps → Windows → Add and assign apps
  (Win32, Store, Line-of-Business).

- Monitor device inventory & compliance: Devices → Overview → All
  devices → compliance status, last check-in, OS version.

- Remote actions: Devices → All devices → select device → remote actions
  (Restart, Wipe, Autopilot reset, Fresh Start).

**Imaging / Provisioning Tips**

- Use Autopilot + Azure AD join + Intune MDM to enable "zero-touch"
  provisioning.

- Keep a "golden image" minimal; rely on Intune for application
  deployment and configuration rather than heavy custom images.

- Name devices via dynamic naming in Autopilot (e.g.,
  "DEPLOY-%SERIAL%").

- Use hybrid Azure AD join if using on-premises domain + Azure AD for
  PCs.

- Maintain driver & firmware updates via Windows update or vendor tools
  integrated through Intune/Update rings.

- Use Windows Delivery Optimization and BranchCache for bandwidth
  efficiency in large roll-outs.

**Troubleshooting / Admin Actions**

- Device not showing in Intune/Autopilot → Check hardware hash import,
  license assignment, Autopilot profile assignment, user/device group
  membership.

- Policy or profile failing → Devices → Troubleshoot → choose device →
  check applied policies & error codes.

- App install fails → Check win32 app detection rule, install context
  (system vs user), assignment status, available device space.

- Non-compliant device → Check Compliance policies (Settings → Devices →
  Compliance policies) -- e.g., encryption, PIN, OS version.

**3. Mobile Device & Cellular Phone Management with Intune Cheat Sheet**

**Enrollment & Setup**

- Select enrollment method based on platform: Devices → iOS/iPadOS,
  Android, Android-Enterprise, macOS.

- For iOS: Devices → iOS/iPadOS → iOS enrollment → configure Apple MDS
  (Device Enrollment Program) or manual Apple ID enrollment.

- For Android: Devices → Android → Android enrollment → choose platform
  (Android Enterprise Work profile, Fully managed, Dedicated).

- Configure device categories or auto-enrollment scopes (Users → Enroll
  devices → Automatic enrollment) to simplify onboarding.

- Install Company Portal app on user device (iOS App Store / Google
  Play) for enrollment & compliance.

**Policies & Configuration**

- Create Device compliance policy: Devices → Compliance policies → New
  policy → select platform → set requirements (e.g., OS version minimum,
  encryption, password).

- Create Configuration profile: Devices → Configuration profiles → New
  profile → platform → profile type (Device restrictions, Wi-Fi, VPN,
  Email).

- Create App protection policy (MAM without enrolment): Apps → App
  protection policies → create for iOS/Android → protect company data in
  apps.

- Assign policies & apps via groups: Use Azure/Intune groups
  (users/devices) and assign accordingly.

- Create Conditional Access: Azure AD → Security → Conditional Access →
  require device compliance before access to resources (e.g., Exchange,
  SharePoint).

**Mobile App & Device Management**

- Deploy company apps: Apps → Add (Store, Win32, LOB) → Assign to
  users/devices.

- Manage updates & configuration of apps: Intune → Apps → Update rings
  or required assignments.

- Remote device actions: Devices → All devices → select device → wipe,
  retire, block, lock, reset PIN.

- Monitor mobile device inventory: Devices → All devices → filter by
  platform, check last sync, OS version, compliance status.

**Admin Tips & Troubleshooting**

- Device not enrolling → Check license (Intune, MDM), user scope,
  platform support, network restrictions.

- App not installing → Check store connectivity, assignment type,
  required vs available settings, user/device group membership.

- Device non compliant → Review compliance policy settings, check if
  user accepted terms, check device sync status.

- Lost/stolen phone scenario → Device → Wipe (factory reset or corporate
  wipe depending on ownership) to protect corporate data.

- BYOD support with MAM (no device enrolment) → Use App protection
  policies and Conditional Access to protect data in apps without full
  device control.

