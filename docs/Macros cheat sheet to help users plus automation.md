
**⚙️ Microsoft Office Macros & VBA -- Helpdesk Admin Cheat Sheet**

**🧩 1. Macro Basics (Applies to Excel, Word, PowerPoint, Outlook)**

  --------------------------------------------------------------------
  **Task**           **Description / Shortcut**
  ------------------ -------------------------------------------------
  **Enable Developer File → Options → Customize Ribbon → Check
  Tab**              **Developer**

  **Record a Macro** Developer → *Record Macro* → perform actions →
                     *Stop Recording*

  **Run a Macro**    Developer → *Macros* → select → *Run*

  **View/Edit Macro  Developer → *Visual Basic*
  Code**             

  **Shortcut Key**   Assign during recording or via Macros → Options

  **Save with        Use **.xlsm**, **.docm**, **.pptm**, or **.otm**
  Macros**           (Outlook)
  --------------------------------------------------------------------

🧠 *Tip: Macros are stored per document by default --- use your
**Personal Macro Workbook** (Excel) for always-available macros.*

**🔹 2. Macro Security**

  -------------------------------------------------------------------------
  **Setting**   **Location**                          **Notes**
  ------------- ------------------------------------- ---------------------
  Enable Macros File → Options → Trust Center → Trust "Enable with
                Center Settings → Macro Settings      notification" is
                                                      safest

  Trusted       Trust Center → Trusted Locations      Add paths where
  Locations                                           macros are safe to
                                                      run

  Digital       Developer → Visual Basic → Tools →    Sign macros for
  Signature     Digital Signature                     deployment
  -------------------------------------------------------------------------

**🔹 3. Common Excel VBA Examples**

**➤ Auto Cleanup Task (e.g., remove blank rows)**

Sub RemoveBlankRows()

On Error Resume Next

ActiveSheet.UsedRange.SpecialCells(xlCellTypeBlanks).EntireRow.Delete

End Sub

**➤ Auto-Save & Timestamp**

Sub SaveWithTimestamp()

Dim fPath As String

fPath = \"C:\\Reports\\Report\_\" & Format(Now, \"yyyymmdd_hhmmss\") &
\".xlsx\"

ActiveWorkbook.SaveAs Filename:=fPath

End Sub

**➤ Format Sheet (standardize fonts, borders)**

Sub FormatSheet()

Cells.Font.Name = \"Calibri\"

Cells.Font.Size = 11

Cells.Borders.LineStyle = xlContinuous

End Sub

**➤ Auto Email Report via Outlook**

Sub SendReport()

Dim OutApp As Object, OutMail As Object

Set OutApp = CreateObject(\"Outlook.Application\")

Set OutMail = OutApp.CreateItem(0)

With OutMail

.To = \"user@example.com\"

.Subject = \"Daily Report\"

.Body = \"Attached is today\'s report.\"

.Attachments.Add ActiveWorkbook.FullName

.Send

End With

End Sub

**🔹 4. Word VBA Examples**

**➤ Remove Empty Paragraphs**

Sub RemoveEmptyParagraphs()

Selection.Find.ClearFormatting

With Selection.Find

.Text = \"\^p\^p\"

.Replacement.Text = \"\^p\"

.Execute Replace:=wdReplaceAll

End With

End Sub

**➤ Insert Date & User Info in Footer**

Sub AddFooterInfo()

With ActiveDocument.Sections(1).Footers(wdFooterPrimary).Range

.Text = \"Created by \" & Environ(\"Username\") & \" on \" & Date

End With

End Sub

**🔹 5. PowerPoint VBA Examples**

**➤ Bulk Apply Template**

Sub ApplyTemplateToAll()

Dim s As Slide

For Each s In ActivePresentation.Slides

s.Design = ActivePresentation.Designs(1)

Next s

End Sub

**➤ Export Slides as Images**

Sub ExportSlidesAsImages()

Dim s As Slide

For Each s In ActivePresentation.Slides

s.Export \"C:\\Slides\\Slide\_\" & s.SlideIndex & \".jpg\", \"JPG\"

Next s

End Sub

**🔹 6. Outlook VBA Examples**

🧠 *Stored in VbaProject.OTM --- open with Alt + F11 in Outlook.*

**➤ Auto Move Emails by Subject**

Sub MoveSpecificEmails()

Dim ns As Outlook.Namespace

Dim Inbox As Outlook.MAPIFolder, DestFolder As Outlook.MAPIFolder

Dim Item As Object

Set ns = Application.GetNamespace(\"MAPI\")

Set Inbox = ns.GetDefaultFolder(olFolderInbox)

Set DestFolder = Inbox.Folders(\"Reports\")

For Each Item In Inbox.Items

If InStr(Item.Subject, \"Report\") \> 0 Then

Item.Move DestFolder

End If

Next

End Sub

**➤ Auto Reply (basic)**

Sub AutoReply(Item As Outlook.MailItem)

Dim reply As Outlook.MailItem

Set reply = Item.Reply

reply.Body = \"Thank you for your message. We'll get back to you soon.\"
& vbCrLf & reply.Body

reply.Send

End Sub

**🔹 7. Admin Automation Ideas**

  ------------------------------------------------------------------
  **Task**                     **Tool**        **VBA Concept**
  ---------------------------- --------------- ---------------------
  Clean up reports / format    Excel           Loop through files in
  sheets daily                                 folder

  Create PDF versions of       Word            ExportAsFixedFormat
  documents                                    

  Generate PowerPoint from     PowerPoint +    Object automation
  Excel data                   Excel           

  Auto-send summary reports    Excel/Outlook   MailItem automation

  Backup files nightly         Excel/Word      FileCopy with
                                               timestamps

  Archive emails older than 30 Outlook         Items.Restrict + Move
  days                                         
  ------------------------------------------------------------------

**🔹 8. Troubleshooting Macro Issues**

  -----------------------------------------------------------------------
  **Problem**                    **Fix**
  ------------------------------ ----------------------------------------
  "Cannot run the macro"         Check Trust Center → Enable macros

  Code breaks with "Subscript    Object not found (sheet name typo, etc.)
  out of range"                  

  Missing reference              In VBA Editor → Tools → References

  "Macros disabled" warning      Save as **.xlsm**, **.docm**, etc., not
                                 plain formats

  Code won't run automatically   Ensure macro is in correct event (e.g.,
                                 Workbook_Open)
  -----------------------------------------------------------------------

**🔹 9. Event-Triggered Macros (Example: Excel)**

**Auto-run when opening workbook:**

Private Sub Workbook_Open()

MsgBox \"Welcome, \" & Environ(\"Username\") & \"!\"

End Sub

**Auto-run when cell value changes:**

Private Sub Worksheet_Change(ByVal Target As Range)

If Target.Address = \"\$A\$1\" Then MsgBox \"Cell A1 was modified!\"

End Sub

**🔹 10. References & Tools**

- Microsoft Docs -- [[VBA Developer
  Reference]{.underline}](https://learn.microsoft.com/en-us/office/vba/api/overview/)

- Macro-enabled Templates: .xltm, .dotm, .potm

- Code Signing Tool: *SelfCert.exe* (included with Office)

- Quick Access Shortcut: Add macro to Ribbon → Customize Ribbon → Choose
  Commands from Macros


