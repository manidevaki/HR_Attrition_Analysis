-- HR Employee Attrition Analytics
-- Dataset: Company Data.xlsx
-- Total records: 1,470
-- Purpose: Business-focused SQL analysis of employee attrition

-- ============================================================
-- 1. Overall attrition count and attrition rate
-- ============================================================
SELECT
    COUNT(*) AS total_employees,
    SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition;


-- ============================================================
-- 2. Attrition by department
-- ============================================================
SELECT
    `Department`,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY `Department`
ORDER BY attrition_rate_pct DESC;


-- ============================================================
-- 3. Attrition by job role
-- ============================================================
SELECT
    `Job Role`,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY `Job Role`
ORDER BY attrition_rate_pct DESC;


-- ============================================================
-- 4. Attrition by age group
-- ============================================================
SELECT
    `Age Group`,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY `Age Group`
ORDER BY attrition_rate_pct DESC;


-- ============================================================
-- 5. Attrition by gender
-- ============================================================
SELECT
    `Gender`,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY `Gender`
ORDER BY attrition_rate_pct DESC;


-- ============================================================
-- 6. Impact of overtime on attrition
-- ============================================================
SELECT
    `Over Time`,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY `Over Time`
ORDER BY attrition_rate_pct DESC;


-- ============================================================
-- 7. Attrition by business travel frequency
-- ============================================================
SELECT
    `Business Travel`,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY `Business Travel`
ORDER BY attrition_rate_pct DESC;


-- ============================================================
-- 8. Attrition by marital status
-- ============================================================
SELECT
    `Marital Status`,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY `Marital Status`
ORDER BY attrition_rate_pct DESC;


-- ============================================================
-- 9. Attrition by job level
-- ============================================================
SELECT
    `Job Level`,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY `Job Level`
ORDER BY attrition_rate_pct DESC;


-- ============================================================
-- 10. Attrition by job satisfaction
-- ============================================================
SELECT
    `Job Satisfaction`,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY `Job Satisfaction`
ORDER BY `Job Satisfaction`;


-- ============================================================
-- 11. Attrition by environment satisfaction
-- ============================================================
SELECT
    `Environment Satisfaction`,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY `Environment Satisfaction`
ORDER BY `Environment Satisfaction`;


-- ============================================================
-- 12. Attrition by work-life balance
-- ============================================================
SELECT
    `Work Life Balance`,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY `Work Life Balance`
ORDER BY `Work Life Balance`;


-- ============================================================
-- 13. Average monthly income: employees who stayed vs left
-- ============================================================
SELECT
    `Attrition`,
    COUNT(*) AS employee_count,
    ROUND(AVG(`Monthly Income`), 2) AS avg_monthly_income,
    ROUND(AVG(`Job Level`), 2) AS avg_job_level,
    ROUND(AVG(`Total Working Years`), 2) AS avg_total_working_years
FROM employee_attrition
GROUP BY `Attrition`;


-- ============================================================
-- 14. Attrition by years at company
--     Employees are grouped into practical tenure bands.
-- ============================================================
SELECT
    CASE
        WHEN `Years At Company` = 0 THEN '0 years'
        WHEN `Years At Company` BETWEEN 1 AND 2 THEN '1-2 years'
        WHEN `Years At Company` BETWEEN 3 AND 5 THEN '3-5 years'
        WHEN `Years At Company` BETWEEN 6 AND 10 THEN '6-10 years'
        ELSE '11+ years'
    END AS tenure_group,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY
    CASE
        WHEN `Years At Company` = 0 THEN '0 years'
        WHEN `Years At Company` BETWEEN 1 AND 2 THEN '1-2 years'
        WHEN `Years At Company` BETWEEN 3 AND 5 THEN '3-5 years'
        WHEN `Years At Company` BETWEEN 6 AND 10 THEN '6-10 years'
        ELSE '11+ years'
    END
ORDER BY attrition_rate_pct DESC;


-- ============================================================
-- 15. High-risk employee segment:
--     overtime + low job satisfaction + short tenure
-- ============================================================
SELECT
    `Department`,
    `Job Role`,
    COUNT(*) AS high_risk_employees,
    SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN `Attrition` = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
WHERE `Over Time` = 'Yes'
  AND `Job Satisfaction` IN (1, 2)
  AND `Years At Company` <= 3
GROUP BY `Department`, `Job Role`
HAVING COUNT(*) >= 5
ORDER BY attrition_rate_pct DESC, high_risk_employees DESC;
