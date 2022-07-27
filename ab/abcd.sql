UPDATE employees 
   SET first_name = 'Markus'
     , last_name  = 'Winand'
 WHERE employee_id   = 123
   AND subsidiary_id = 30;
The statement to create the function-based index:

CREATE INDEX emp_up_name
    ON employees (UPPER(last_name) varchar_pattern_ops);;
DROP INDEX emp_name;;
VACUUM ANALYZE employees;