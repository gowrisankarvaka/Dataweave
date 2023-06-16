%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload distinctBy $.department map (item, index) ->
{
    "department": item.department,
    "count": payload countBy (item.department == $.department)
} 