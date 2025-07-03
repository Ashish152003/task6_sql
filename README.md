## 📝 Objective

To build advanced SQL logic using **subqueries** in various clauses such as:
- `SELECT`
- `WHERE`
- `FROM`

---

## 📁 Tables Used

### 1. Employees

| Column      | Type    |
|-------------|---------|
| EmployeeID  | INT     |
| Name        | VARCHAR |
| Department  | VARCHAR |
| Salary      | INT     |

### 2. Projects

| Column      | Type    |
|-------------|---------|
| ProjectID   | INT     |
| ProjectName | VARCHAR |
| Budget      | INT     |
| LeadID      | INT (FK → Employees) |

---

## 🧠 Concepts Demonstrated

| Query Type           | Description                                                    |
|----------------------|----------------------------------------------------------------|
| Scalar Subquery      | Subquery returning a single value inside `SELECT`              |
| Correlated Subquery  | Depends on outer query, used inside `WHERE`                    |
| IN with Subquery     | Filter based on values from another query                      |
| EXISTS with Subquery | Checks if related rows exist in a subquery                     |
| Derived Table        | Subquery used as a temporary table in `FROM` clause            |


## 💾 Tools Used

- MySQL Workbench
- DB Browser for SQLite (except `LIMIT` in subquery which works in SQLite >=3.25)

## 🙌 Thank You!
