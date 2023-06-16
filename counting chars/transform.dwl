%dw 2.0
output application/json
---
Output: payload.Input groupBy $ mapObject ((value, key, index) -> (key): sizeOf(value)) pluck ((value, key, index) ->(key) ++ value ) joinBy ''
