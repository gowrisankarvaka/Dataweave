%dw 2.0
output application/json
---
flatten(payload.employee_list map $) filter ((item, index) -> item.emp_id != 2)