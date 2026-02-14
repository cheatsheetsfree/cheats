**Google Workspace Admin Cheat Sheet**

**1. User & Account Management**

- Create a user: Admin console → Users → *Add new user*.
  ([[SkillCertPro]{.underline}](https://skillcertpro.com/wp-content/uploads/2023/12/Associate-Google-Workspace-Administrator-Master-Cheat-Sheet.pdf?utm_source=chatgpt.com))

- Suspend or delete a user: Users → select user → *Suspend* or *Delete*.

- Reset password: Users → select user → *Reset password*.

- Assign or remove license: Users → select user → Licenses & apps →
  select/deselect license.

- Set roles: Admin console → Roles → assign e.g., Super Admin, User
  Management Admin.
  ([[Nira]{.underline}](https://nira.com/g-suite-admin-console/?utm_source=chatgpt.com))

- Bulk user upload: Admin console → Users → *Bulk add users* (via CSV)
  for mass onboarding.
  ([[SkillCertPro]{.underline}](https://skillcertpro.com/wp-content/uploads/2023/12/Associate-Google-Workspace-Administrator-Master-Cheat-Sheet.pdf?utm_source=chatgpt.com))

**2. Organizational Structure & Groups**

- Create Organizational Unit (OU): Setup → Directory → Organizational
  units → Add OU.

- Move users into OUs to apply different settings by OU.

- Create Groups: Admin console → Groups → *Create group*. Use for email
  lists, permissions.
  ([[Nira]{.underline}](https://nira.com/g-suite-admin-console/?utm_source=chatgpt.com))

- Shared drives: Admin console → Shared drives → Create/manage
  team‐drives.
  ([[Cloudinary]{.underline}](https://resources.finalsite.net/images/v1707239808/fedk12mnus/rzcz1silhjzspxhhfynu/Shareddrivescheatsheet.pdf?utm_source=chatgpt.com))

**3. Services & Apps Configuration**

- Enable/disable services for users or OUs: Admin console → Apps →
  Google Workspace → select App → Service status.

- Configure external sharing settings: Admin console → Apps → Google
  Drive & Docs → Sharing settings.

- Set up single sign-on (SSO) and identity provider: Admin console →
  Security → Set up SAML/SSO.
  ([[SkillCertPro]{.underline}](https://skillcertpro.com/wp-content/uploads/2023/12/Associate-Google-Workspace-Administrator-Master-Cheat-Sheet.pdf?utm_source=chatgpt.com))

**4. Security & Compliance**

- Enforce two‐factor authentication (2FA/MFA): Admin console → Security
  → 2-Step Verification.
  ([[Nira]{.underline}](https://nira.com/g-suite-admin/?utm_source=chatgpt.com))

- Set up alerts and monitoring: Admin console → Security → Alert center
  (for Business/Enterprise).

- Manage data loss prevention (DLP): Admin console → Security → Data
  protection, depending on plan.

- Audit logs & report usage: Admin console → Reports → Audit and
  investigation.

- Role‐based access control (RBAC): Only assign admin roles as needed;
  don't use Super Admin daily.
  ([[Reddit]{.underline}](https://www.reddit.com/r/googleworkspace/comments/1jlj384?utm_source=chatgpt.com))

**5. Migration & Onboarding/Offboarding**

- Onboarding: Use form (e.g., Google Forms) to collect data, then
  onboard via Admin console.
  ([[Nira]{.underline}](https://nira.com/g-suite-admin/?utm_source=chatgpt.com))

- Offboarding: Immediately suspend/delete user, transfer ownership of
  files, revoke access.
  ([[Nira]{.underline}](https://nira.com/g-suite-admin/?utm_source=chatgpt.com))

- Data migration: Admin console → Data migration to bring in
  email/calendar/contacts from other platforms.
  ([[Nira]{.underline}](https://nira.com/g-suite-admin-console/?utm_source=chatgpt.com))

**6. Troubleshooting / Common Helpdesk Tasks**

- User can't access Gmail/Drive: Check that license is assigned +
  service status + user is in correct OU.

- User lost email or says "suspended": Check Users → suspended list,
  check policy for account.

- External sharing not working: Check Drive & Docs sharing settings and
  group membership.

- Provide user training: Link to cheat sheets for Docs/Sheets/Slides:
  Google Learning Center. ([[Google
  Help]{.underline}](https://support.google.com/a/users/answer/13967034?hl=en-sg&rd=1&visit_id=638742200625933103-869279917&utm_source=chatgpt.com))

**7. Best Practices**

- Maintain at least two Super Admin accounts for recovery.
  ([[Nira]{.underline}](https://nira.com/g-suite-admin-console/?utm_source=chatgpt.com))

- Do **not** use a Super Admin account for regular email/work tasks; use
  a separate lower-privilege account for daily operations.
  ([[Reddit]{.underline}](https://www.reddit.com/r/googleworkspace/comments/1jlj384?utm_source=chatgpt.com))

- Regularly review admin roles, user licenses, and inactive accounts.

- Enforce strong password policies and 2FA for all users and especially
  for admins.

- Document processes (onboarding/offboarding) and ensure they're
  followed consistently.

- Use Groups & OUs effectively to apply different policies/settings
  rather than individual user configurations.


