%dw 2.0
output application/json
---
flatten(payload flatMap ((item, index) -> item pluck ((value, key, index) -> value)))

//flatten(payload.v)