%dw 2.0
output application/csv
---
flatten(payload map
[{
    emp_name: $.internal_emp_name,
    emp_id: $.internal_emp_id,
    emp_dept: $.internal_emp_dept,
},
{
    emp_name: $.external_emp_name,
    emp_id: $.external_emp_id,
    emp_dept: $.external_emp_dept
}])

// combining the internal and external names,id,dept under one key by using flatten and map functions
// we can also do it with flatMap