# TakeCare Healthcare Expense Management System

## Project Overview

The project at TakeCare Healthcare focuses on developing an integrated and streamlined system for expense report processing, with the main emphasis on MySQL database implementation.

TakeCare Healthcare is a large healthcare provider with a multi-departmental structure, encompassing neurology, cardiology, transportation, logistics, podiatry, dental, paramedical, and more, employing over 10,000 individuals.

The organization, planning to expand to Australia, has partnerships with major insurance providers, universities, and research labs nationwide.

The identified challenges include timely reimbursement for employees, enhanced visibility of expense report status, automated accounting for faster month closing, and facilitating auditors in enforcing organizational expense policies.

The proposed MySQL database solution addresses these challenges through structured tables such as Department, Employee, Auditor, Reimbursement, Expense Type, and Expense, incorporating business rules and user requirements.

The SQL implementation includes metadata definitions and data definition language for inserting records, along with end-user queries, stored procedures, and views tailored to the needs of employees, auditors, and stakeholders. This MySQL-based solution aims to provide a comprehensive and efficient expense management system for TakeCare Healthcare.

## Queries Executed:

- **End User Query 1:** Auditor Query to determine the number of approved/rejected expense reports.
- **End User Query 2:** Auditor Query to identify high-risk expense reports for employees.
- **End User Query 3:** Employee Expenses by Department.
- **End User Query 4:** Count of submitted Expenses in each Department.
- **End User Query 5:** Comprehensive view of all columns in the database.
- **Stored Procedure 1:** Finding the status of expense reports for an employee.
- **Stored Procedure 2:** Finding the average expense incurred on each expense type.
- **Stored Procedure 3:** Identifying employees who have exceeded the expense type limit and flagging them as a risk.
- **View 1:** Providing employees with a secure view of the status of their expense reports.
- **View 2:** Displaying the total reimbursement amount disbursed as of a particular date.
- **View 3:** Allowing auditors to see all expenses audited and their associated reimbursements, with access to auditors' own expense reports that were audited.
