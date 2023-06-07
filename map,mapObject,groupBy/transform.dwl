%dw 2.0
output application/json
---
payload map ($ mapObject((value, key, index) -> (value))) groupBy((item, index) -> item.sales.country)

// grouping the countries based on country name