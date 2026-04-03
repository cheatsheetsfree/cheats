**robocopy "C:\OriginalFolder" "D:\CopiedFolder" /L /E
/LOG:missing_files.txt**

**robocopy "C:\OriginalFolder" "D:\CopiedFolder" /L /E /NJH /NJS /NP /NS
/NC /LOG:C:\temp\missing_files.txt**

**robocopy "C:\OriginalFolder" "D:\CopiedFolder" /L /E /NJH /NJS /NP /NS
/NC /MT:32 \| findstr /B /C:" " \> C:\temp\missing_files.txt**

**robocopy "C:\OriginalFolder" "D:\CopiedFolder" /L /E /NJH /NJS /NP /FP
/NS /NC \| findstr "New File" \> C:\temp\missing_files.txt**

Here’s a clean breakdown of **each switch/term** that appears in your
commands—**one short explanation per item**:

------------------------------------------------------------------------

**Core command**

- **robocopy** → Windows command-line tool for copying files and
  directories.

------------------------------------------------------------------------

**Paths**

- **"C:\OriginalFolder"** → Source directory.

- **"D:\CopiedFolder"** → Destination directory.

------------------------------------------------------------------------

**Common switches**

- **/L** → Lists files that *would* be copied without actually copying
  them.

- **/E** → Includes all subdirectories, including empty ones.

------------------------------------------------------------------------

**Logging/output**

- **/LOG:missing_files.txt** → Writes output to the specified log file.

- **/LOG:C:\temp\missing_files.txt** → Writes output to a full path log
  file.

------------------------------------------------------------------------

**Output suppression / formatting**

- **/NJH** → No job header in output.

- **/NJS** → No job summary in output.

- **/NP** → No progress percentage shown.

- **/NS** → No file sizes listed.

- **/NC** → No file class (e.g., New, Changed) shown.

------------------------------------------------------------------------

**Performance**

- **/MT:32** → Uses 32 threads for multi-threaded processing.

------------------------------------------------------------------------

**File detail**

- **/FP** → Displays full file path names in output.

------------------------------------------------------------------------

**Piping and filtering**

- **\|** → Pipes the output of one command into another.

- **findstr** → Searches for text patterns in output.

- **/B** → Matches text at the beginning of a line.

- **/C:" "** → Searches for lines starting with four spaces.

- **"New File"** → Filters lines containing the text “New File”.

------------------------------------------------------------------------

**Redirection**

- **\> C:\temp\missing_files.txt** → Sends final filtered output to a
  file (overwrites it).

------------------------------------------------------------------------
