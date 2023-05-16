%dw 2.0
output application/json
---
payload map
{
    column_0: $.column_0,
    column_1: $.column_1,
    t1: $.column_0,
    t2: $.column_1,
    t3: $.column_2
} filter $.column_0 != 'declaration'

// filtering the data based on condition