{{
    config(
        materialized='table'
    )
}}


SELECT 
    EMPLOYEE_ID,
    DENSE_RANK() OVER (
        PARTITION BY DEPARTMENT_ID 
        ORDER BY SALARY DESC
    ) AS DRK,
    SALARY
FROM EMP_DB.EMP_SCH.EMP_TB