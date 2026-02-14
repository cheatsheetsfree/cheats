**🧩 Excel Helpdesk Admin Cheat Sheet**

**🔹 1. Common Keyboard Shortcuts**

  -----------------------------------------
  **Action**         **Shortcut**
  ------------------ ----------------------
  Copy / Paste       **Ctrl + C / Ctrl +
                     V**

  Cut                **Ctrl + X**

  Undo / Redo        **Ctrl + Z / Ctrl +
                     Y**

  Select All         **Ctrl + A**

  Save Workbook      **Ctrl + S**

  Open Workbook      **Ctrl + O**

  Find / Replace     **Ctrl + F / Ctrl +
                     H**

  Add new sheet      **Shift + F11**

  Switch between     **Ctrl + Page Up /
  sheets             Page Down**

  Autosum selected   **Alt + =**
  cells              

  Insert date / time **Ctrl + ; / Ctrl +
                     Shift + ;**

  Freeze panes       **Alt + W + F + F**
  -----------------------------------------

------------------------------------------------------------------------

**🔹 2. Common Formula Fixes**

  ------------------------------------------------------------------------
  **Issue**           **Possible Cause** **Quick Fix**
  ------------------- ------------------ ---------------------------------
  Formula not         Cell formatted as  Change to "General" →
  calculating         text               press **F2 + Enter**

  "####" in cell      Column too narrow  Double-click column edge to
                                         resize

  #DIV/0!             Division by zero   Wrap formula with =IFERROR(A1/B1,
                                         \"\")

  #REF!               Deleted referenced Recreate formula or fix
                      cell               references

  #NAME?              Typo in formula    Check function spelling or
                      name               missing quotes

  #VALUE!             Mismatched data    Use proper cell types (number vs
                      type               text)
  ------------------------------------------------------------------------

**🔹 3. Useful Formulas**

  --------------------------------------------------------------
  **Task**          **Formula**
  ----------------- --------------------------------------------
  Add cells         =SUM(A1:A10)

  Average           =AVERAGE(A1:A10)

  Count numbers     =COUNT(A1:A10)

  Count any values  =COUNTA(A1:A10)

  Conditional sum   =SUMIF(range, criteria, sum_range)

  Combine text      =CONCATENATE(A1, \" \", B1) or =A1 & \" \" &
                    B1

  Lookup value      =VLOOKUP(lookup_value, table_array,
                    col_index, FALSE)

  More powerful     =XLOOKUP(value, lookup_range, return_range)
  lookup            

  Conditional logic =IF(A1\>100, \"High\", \"Low\")

  Remove extra      =TRIM(A1)
  spaces            

  Extract text      =LEFT(A1,5) / =RIGHT(A1,3) / =MID(A1,3,4)
  --------------------------------------------------------------

------------------------------------------------------------------------

**🔹 4. Common User Problems & Quick Fixes**

  ------------------------------------------------------------------
  **Problem**          **Quick Resolution**
  -------------------- ---------------------------------------------
  **Excel won't open** Try opening in **Safe Mode** → excel /safe

  **File locked for    Check if another user has it open → or open
  editing**            as **Read Only**

  **Data not visible** Unhide rows/columns: **Home → Format → Hide &
                       Unhide**

  **Numbers show as    Select → **Data → Text to Columns → Finish**
  text**               

  **Slow Excel**       Disable **Add-ins** → File → Options →
                       Add-ins

  **AutoSave missing** Ensure OneDrive/SharePoint sync enabled

  **Pivot Table won't  **Right-click → Refresh**, or **Alt + F5**
  refresh**            
  ------------------------------------------------------------------

------------------------------------------------------------------------

**🔹 5. Formatting Tips**

- **Freeze top row:** View → Freeze Panes → *Freeze Top Row*

- **Alternate row colors:** Home → Format as Table

- **Lock cells (Protect Sheet):**

  1.  Select editable cells → Format Cells → Protection → *Uncheck
      Locked*

  2.  Review → Protect Sheet → Set password

- **Conditional formatting:**\
  Highlight cells → Home → Conditional Formatting → New Rule

------------------------------------------------------------------------

**🔹 6. Data Tools**

  ---------------------------------------------------
  **Tool**         **Use**
  ---------------- ----------------------------------
  Remove           Data → Remove Duplicates
  Duplicates       

  Data Validation  Data → Data Validation (e.g.,
                   dropdown lists)

  Split text to    Data → Text to Columns
  columns          

  Filter data      Ctrl + Shift + L

  Flash Fill       Data → Flash Fill (or **Ctrl +
                   E**)
  ---------------------------------------------------

------------------------------------------------------------------------

**🔹 7. Pivot Table Essentials**

1.  Select data → Insert → PivotTable

2.  Drag **fields**:

    - Rows → category

    - Values → sum/count

    - Filters → top-level filter

3.  Refresh data: Right-click → *Refresh*

4.  Use **PivotChart** for visual summaries

------------------------------------------------------------------------

**🔹 8. Helpdesk Quick Scripts / Phrases**

- "Please press **Ctrl + \`** (grave accent) to show or hide formulas."

- "It looks like your cells are formatted as text --- let's change them
  to General."

- "Try pressing **Alt + W + F + F** to freeze panes."

- "If Excel crashes, launch it in Safe Mode with: excel /safe."

------------------------------------------------------------------------

**🔹 9. Support References**

- Microsoft Excel Support: https://support.microsoft.com/excel

- Keyboard
  shortcuts: https://support.microsoft.com/en-us/excel-shortcuts

- Excel Repair Tool: Control Panel → Programs → Microsoft 365 → Change
  → *Quick Repair*

------------------------------------------------------------------------

