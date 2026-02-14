**🧩 SQL Cheat Sheet for Helpdesk & Admins**

**🔹 1. SQL Basics**

  ----------------------------------------------
  **Command**   **Purpose**
  ------------- --------------------------------
  SELECT        Retrieve data

  INSERT        Add data

  UPDATE        Modify data

  DELETE        Remove data

  CREATE        Create database objects (tables,
                views, etc.)

  ALTER         Modify structure

  DROP          Delete objects

  WHERE         Filter results

  ORDER BY      Sort results

  GROUP BY      Summarize data

  JOIN          Combine multiple tables
  ----------------------------------------------

**🔹 2. Common User Help Queries**

  -----------------------------------------------------------------------
  **Task**                   **Example**
  -------------------------- --------------------------------------------
  View all rows              SELECT \* FROM Employees;

  View specific columns      SELECT FirstName, LastName FROM Employees;

  Filter records             SELECT \* FROM Employees WHERE Department =
                             \'IT\';

  Partial match              SELECT \* FROM Employees WHERE LastName LIKE
                             \'Sm%\';

  Sort results               SELECT \* FROM Employees ORDER BY HireDate
                             DESC;

  Count records              SELECT COUNT(\*) FROM Employees;

  Remove duplicates          SELECT DISTINCT Department FROM Employees;

  Limit results              SELECT \* FROM Employees LIMIT 10;
  (MySQL/PostgreSQL)         

  Limit (SQL Server)         SELECT TOP 10 \* FROM Employees;
  -----------------------------------------------------------------------

**🔹 3. Data Management Queries (Admin Use)**

  -----------------------------------------------------------------------
  **Task**        **Query**
  --------------- -------------------------------------------------------
  Insert new      INSERT INTO Employees (FirstName, LastName, Department)
  record          VALUES (\'John\', \'Doe\', \'Finance\');

  Update existing UPDATE Employees SET Department=\'HR\' WHERE
  record          EmployeeID=101;

  Delete record   DELETE FROM Employees WHERE EmployeeID=101;

  Bulk update     UPDATE Employees SET Status=\'Inactive\' WHERE
  with condition  LastLogin \< \'2024-01-01\';

  Check table     DESCRIBE Employees; *(MySQL)* or EXEC sp_columns
  structure       Employees; *(SQL Server)*

  Rename column   ALTER TABLE Employees RENAME COLUMN Dept TO Department;

  Add new column  ALTER TABLE Employees ADD HireDate DATE;

  Drop column     ALTER TABLE Employees DROP COLUMN TempField;
  -----------------------------------------------------------------------

**🔹 4. Useful Query Patterns**

**➤ Find records with NULL values**

SELECT \* FROM Employees WHERE ManagerID IS NULL;

**➤ Replace or handle NULLs**

SELECT COALESCE(PhoneNumber, \'Not Provided\') AS Phone FROM Employees;

**➤ Calculate totals and averages**

SELECT Department, COUNT(\*) AS Total, AVG(Salary) AS AvgSalary

FROM Employees

GROUP BY Department;

**➤ Find duplicates**

SELECT Email, COUNT(\*) AS Count

FROM Employees

GROUP BY Email

HAVING COUNT(\*) \> 1;

**➤ Combine data from two tables**

SELECT e.FirstName, e.LastName, d.DeptName

FROM Employees e

JOIN Departments d ON e.DeptID = d.DeptID;

**🔹 5. Admin / Troubleshooting Queries**

  -----------------------------------------------------------------------
  **Task**      **Query**
  ------------- ---------------------------------------------------------
  Show all      SHOW DATABASES; *(MySQL)* / SELECT name FROM
  databases     sys.databases; *(SQL Server)*

  Use a         USE HRDatabase;
  database      

  List tables   SHOW TABLES; / SELECT \* FROM information_schema.tables;

  Show users    SELECT User FROM mysql.user; / SELECT name FROM
                sys.sql_logins;

  Check         SHOW PROCESSLIST; / sp_who2;
  connections   

  Kill session  KILL 123; *(session ID)*

  Check DB size SQL Server: EXEC sp_spaceused;

  Backup        BACKUP DATABASE HRDatabase TO
  database      DISK=\'C:\\Backup\\HRDatabase.bak\';

  Restore       RESTORE DATABASE HRDatabase FROM
  database      DISK=\'C:\\Backup\\HRDatabase.bak\';
  -----------------------------------------------------------------------

**🔹 6. Joins Cheat Sheet**

  ------------------------------------------------------------------------
  **Join     **Description**           **Example**
  Type**                               
  ---------- ------------------------- -----------------------------------
  **INNER    Only matching rows in     SELECT \* FROM A INNER JOIN B ON
  JOIN**     both tables               A.ID = B.ID;

  **LEFT     All from left table +     SELECT \* FROM A LEFT JOIN B ON
  JOIN**     matching from right       A.ID = B.ID;

  **RIGHT    All from right table +    SELECT \* FROM A RIGHT JOIN B ON
  JOIN**     matching from left        A.ID = B.ID;

  **FULL     All from both tables      SELECT \* FROM A FULL OUTER JOIN B
  JOIN**                               ON A.ID = B.ID;

  **CROSS    Cartesian product         SELECT \* FROM A CROSS JOIN B;
  JOIN**                               
  ------------------------------------------------------------------------

**🔹 7. User Reporting Queries**

  -----------------------------------------------------------------------
  **Scenario**       **Example**
  ------------------ ----------------------------------------------------
  Employees hired    SELECT \* FROM Employees WHERE YEAR(HireDate) =
  this year          YEAR(GETDATE());

  Salary above       SELECT \* FROM Employees WHERE Salary \> (SELECT
  average            AVG(Salary) FROM Employees);

  Top 5 highest-paid SELECT TOP 5 \* FROM Employees ORDER BY Salary DESC;
  employees          

  Department summary SELECT Department, SUM(Salary) AS TotalPay FROM
                     Employees GROUP BY Department;

  Count active users SELECT Location, COUNT(\*) FROM Users WHERE
  per location       Status=\'Active\' GROUP BY Location;
  -----------------------------------------------------------------------

**🔹 8. Security & Access Queries**

  -----------------------------------------------------------------------
  **Task**      **Example**
  ------------- ---------------------------------------------------------
  Create new    CREATE USER \'report_user\'@\'localhost\' IDENTIFIED BY
  user          \'StrongPass!\';

  Grant         GRANT SELECT, INSERT ON HRDatabase.\* TO
  privileges    \'report_user\'@\'localhost\';

  Revoke        REVOKE INSERT ON HRDatabase.\* FROM
  privileges    \'report_user\'@\'localhost\';

  Show          SHOW GRANTS FOR \'report_user\'@\'localhost\';
  privileges    

  Change        ALTER USER \'report_user\'@\'localhost\' IDENTIFIED BY
  password      \'NewPass!\';
  -----------------------------------------------------------------------

**🔹 9. Troubleshooting Common Errors**

  -----------------------------------------------------------------------
  **Error**          **Cause**               **Fix**
  ------------------ ----------------------- ----------------------------
  Syntax error near  Typo or missing quotes  Recheck quotes, commas, or
  \...                                       semicolons

  Unknown column     Misspelled column name  Verify with DESCRIBE
  \...                                       table_name;

  Access denied      Permission issue        Use GRANT or contact DBA

  Table doesn\'t     Wrong schema or case    Use USE database; and check
  exist              sensitivity             spelling

  Lock wait timeout  Query conflict          Use ROLLBACK; or kill
                                             blocking process
  -----------------------------------------------------------------------

**🔹 10. Admin Automation Ideas**

  ------------------------------------------------------------------------
  **Task**       **SQL Concept**                        **Example**
  -------------- -------------------------------------- ------------------
  Auto-cleanup   DELETE \... WHERE Date \< NOW() -      MySQL
  logs older     INTERVAL 30 DAY;                       
  than X days                                           

  Auto-create    BACKUP DATABASE                        Use with
  daily backups                                         Windows/Linux
                                                        scheduler

  Monitor user   Query sys.dm_exec_sessions or          SQL Server/MySQL
  activity       information_schema.processlist         

  Find slow      SHOW FULL PROCESSLIST; or              Performance tuning
  queries        sys.dm_exec_query_stats                

  Track schema   information_schema.columns             Compare snapshots
  changes                                               via script
  ------------------------------------------------------------------------

**🔹 11. Quick Reference -- SQL Functions**

  ---------------------------------------------------------------
  **Category**    **Examples**
  --------------- -----------------------------------------------
  **String**      CONCAT(), LOWER(), UPPER(), SUBSTRING(), TRIM()

  **Math**        ROUND(), SUM(), AVG(), MIN(), MAX()

  **Date/Time**   NOW(), GETDATE(), DATEADD(), DATEDIFF(),
                  YEAR(), MONTH()

  **Logic**       CASE WHEN \... THEN \... ELSE \... END

  **Null          COALESCE(), ISNULL()
  Handling**      
  ---------------------------------------------------------------

**🔹 12. Performance Tips**

- Avoid SELECT \* in production; specify columns

- Always index frequently searched columns

- Use EXPLAIN or SET SHOWPLAN to analyze slow queries

- Limit data returned with TOP / LIMIT

- Clean up unused indexes and statistics

**🔹 13. Helpdesk Quick Answers**

- "Try filtering with WHERE or LIKE for more accurate results."

- "If your query runs forever, check for missing joins or filters."

- "Always backup before running DELETE or UPDATE without a WHERE
  clause!"

- "For date filters, remember format differences between SQL Server
  (YYYY-MM-DD) and Oracle (TO_DATE)."


