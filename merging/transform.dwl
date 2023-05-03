%dw 2.0
output application/json
---
//{(payload)}
payload reduce ((item, accumulator={}) -> accumulator ++ item)